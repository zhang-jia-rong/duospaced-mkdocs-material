FROM python:3.11-alpine3.18

# Build-time flags
ARG WITH_PLUGINS=true
ARG VERSION
ARG DEBUG=""
ARG BUILD_DATE
ARG VCS_REF

# Environment variables
ENV PACKAGES=/usr/local/lib/python3.11/site-packages
ENV PYTHONDONTWRITEBYTECODE=1

# Set build directory
WORKDIR /tmp

# Copy files necessary for build
COPY material material
COPY package.json package.json
COPY README.md README.md
COPY *requirements.txt ./
COPY pyproject.toml pyproject.toml
COPY docs/stylesheets /docs/docs/stylesheets

# Perform build and cleanup artifacts and caches
RUN \
  apk upgrade --update-cache -a \
&& \
  apk add --no-cache \
    cairo=1.17.8-r1 \
    freetype-dev=2.13.0-r5 \
    git=2.40.1-r0 \
    git-fast-import=2.40.1-r0 \
    jpeg-dev=9e-r1 \
    openssh=9.3_p2-r1 \
    tini=0.19.0-r1 \
    zlib-dev=1.2.13-r1 \
&& \
  apk add --no-cache --virtual .build \
    gcc=12.2.1_git20220924-r10 \
    libffi-dev=3.4.4-r2 \
    musl-dev=1.2.4-r2 \
&& \
  pip install --no-cache-dir --upgrade pip==24.0 \
&& \
  pip install --no-cache-dir . \
&& \
  if [ "${WITH_PLUGINS}" = "true" ]; then \
    pip install --no-cache-dir \
      mkdocs-material[recommended]==9.5.17 \
      mkdocs-material[imaging]==9.5.17; \
  fi \
&& \
  if [ -e user-requirements.txt ]; then \
    pip install -U -r user-requirements.txt; \
  fi \
&& \
  # Overwrite existing files in /usr/local/lib/python3.11/site-packages/material
  rm -rf $PACKAGES/material && mkdir -p $PACKAGES/material && cp -r ./material/. $PACKAGES/material \
&& \
  apk del .build \
&& \
  for theme in mkdocs readthedocs; do \
    rm -rf ${PACKAGES}/mkdocs/themes/$theme; \
    ln -s \
      ${PACKAGES}/material/templates \
      ${PACKAGES}/mkdocs/themes/$theme; \
  done \
&& \
  rm -rf /tmp/* /root/.cache \
&& \
  find ${PACKAGES} \
    -type f \
    -path "*/__pycache__/*" \
    -exec rm -f {} \; \
&& \
  git config --system --add safe.directory /docs \
&& \
  git config --system --add safe.directory /site \
&& \
  adduser --disabled-password --gecos '' mkdocs-user \
&& \
  chown -R mkdocs-user:mkdocs-user /docs/ \
&& \
  cp -r /docs/docs/stylesheets /tmp/mkdocs_stylesheets_safe \
&& \
  if [ -z "$VERSION" ] || [ -z "$BUILD_DATE" ] || [ -z "$VCS_REF" ]; then exit 1; fi

# Set the OCI labels
LABEL org.opencontainers.image.created=$BUILD_DATE \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.source="https://github.com/zhang-jia-rong/duospaced-mkdocs-material" \
      org.opencontainers.image.title="duospaced-mkdocs-material" \
      org.opencontainers.image.url="https://github.com/zhang-jia-rong/duospaced-mkdocs-material" \
      org.opencontainers.image.version=$VERSION${DEBUG}

# Set working directory
WORKDIR /docs

# Expose MkDocs development server port
EXPOSE 8000

# Start development server by default
USER mkdocs-user
ENTRYPOINT ["/sbin/tini", "--", "mkdocs"]
CMD ["sh", "-c", "cp -rn /tmp/mkdocs_stylesheets_safe/* /docs/docs/stylesheets && exec mkdocs \"$@\"", "--"]

# This line sets a healthcheck for the Docker container
HEALTHCHECK --interval=1m --timeout=3s --start-period=30s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://0.0.0.0:8000/ || exit 1