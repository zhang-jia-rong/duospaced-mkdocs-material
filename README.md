# DuoSpaced Material for MkDocs

This repository provides the `ckwing/duospaced-mkdocs-material` Docker image, a customized version of the Material theme for MkDocs with unique font styles.

## Docker Commands

- `docker run --rm -it -v ${PWD}:/docs ckwing/duospaced-mkdocs-material new .` - Create a new project.
- `docker run --rm -it -p 8000:8000 -v ${PWD}:/docs ckwing/duospaced-mkdocs-material` - Start the live-reloading docs server.
- `docker run --rm -it -v ${PWD}:/docs ckwing/duospaced-mkdocs-material build` - Build the documentation site.
- `docker run --rm -v ${PWD}:/docs ckwing/duospaced-mkdocs-material -h` - Print help message and exit.

## Project layout

    mkdocs.yml    # The configuration file.
    docs/
        index.md  # The documentation homepage.
        ...       # Other markdown pages, images and other files.

For more information, please visit the [documentation site](https://zhang-jia-rong.github.io/duospaced-mkdocs-material/).
