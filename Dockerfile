FROM squidfunk/mkdocs-material:9.5.17

RUN adduser --disabled-password --gecos '' mkdocs-user

USER mkdocs-user

HEALTHCHECK --interval=1m --timeout=3s --start-period=30s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://0.0.0.0:8000/ || exit 1

# Declare the build arguments
ARG VERSION
ARG DEBUG
ARG BUILD_DATE
ARG VCS_REF

# Set the OCI labels
LABEL org.opencontainers.image.created=$BUILD_DATE \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.source="https://github.com/zhang-jia-rong/duospaced-mkdocs-material" \
      org.opencontainers.image.title="duospaced-mkdocs-material" \
      org.opencontainers.image.url="https://github.com/zhang-jia-rong/duospaced-mkdocs-material" \
      org.opencontainers.image.version=$VERSION${DEBUG}