FROM squidfunk/mkdocs-material:9.5.17

RUN adduser --disabled-password --gecos '' mkdocs-user

USER mkdocs-user

HEALTHCHECK --interval=1m --timeout=3s --start-period=30s --retries=3 \
  CMD wget --quiet --tries=1 --spider http://0.0.0.0:8000/ || exit 1

LABEL org.opencontainers.image.title="duospaced-mkdocs-material" org.opencontainers.image.version="0.1.0"