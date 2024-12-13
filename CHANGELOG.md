# CHANGELOG


## v0.10.1-rc.1 (2024-12-13)

### Bug Fixes

- Upgrade git-committers-plugin-2 to 2.4.1
  ([`16f113f`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/16f113f87ac25584ec8f0363d173fd4b9411f321))

Fixed the api_version configuration warning in CI builds by upgrading to version 2.4.1. This version
  resolves the UnboundLocalError related to user variables in both GitHub and GitLab integrations.

The upgrade also includes improvements from 2.4.0 such as better handling of private repositories,
  co-authors support, and fixes for avatar loading issues in GitLab.


## v0.10.0 (2024-12-13)


## v0.10.0-rc.1 (2024-10-17)

### Bug Fixes

- Update Dockerfile to resolve conflicts
  ([`f5e9278`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/f5e927862a772af0291aa384092895212776feb4))

Updated git to version 2.40.3-r0 and git-fast-import to version 2.40.3-r0 to resolve version
  conflicts.

### Features

- Add mkdocs-autorefs and mkdocs-pdf plugins
  ([`5223b28`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/5223b28b56578c31fef335c6c3b1a90bab15cf3d))

Added 'mkdocs-autorefs' and 'mkdocs-pdf' plugins to the requirements.txt file. - 'mkdocs-autorefs'
  enables automatic referencing of Markdown headings within a MkDocs site. - 'mkdocs-pdf' allows
  embedding PDFs in your documentation using standard Markdown syntax.

Refactored the requirements.txt file to include the following additional libraries: -
  mkdocs-autorefs==1.2.0 - mkdocs-pdf==0.1.2


## v0.9.0 (2024-07-13)


## v0.9.0-rc.1 (2024-07-13)

### Features

- Upgrade Dockerfile and linters
  ([`5edb87e`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/5edb87ec42f1481fbd38e6943318766e129010d4))

Updated the Dockerfile to include doxygen installation with --no-cache option to keep the image size
  minimal. Upgraded osv-scanner to 1.8.3 and checkov to 3.2.185 in trunk.yaml for improved security
  and compliance checks.


## v0.8.2 (2024-07-10)


## v0.8.2-rc.1 (2024-07-10)

### Bug Fixes

- Add Excel file engines to requirements.txt
  ([`4d1d83a`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/4d1d83a7d33d4f56b3e881cbe81e9add52133776))

- Added python-calamine==0.2.0, pyxlsb==1.0.10, and xlrd>=2.0.1 to the optional requirements section
  in requirements.txt. - Resolves ImportError related to missing optional dependencies for handling
  various Excel file formats.

- Remove force prerelease option
  ([`4adea23`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/4adea2333f556e4952447fbdb412b4c32b868ee0))

- Deleted the force option in semantic-release configuration to prevent automatic prerelease version
  bumps. - Ensures that version increments follow the standard release process without forced
  prerelease increments.


## v0.8.1 (2024-07-09)


## v0.8.1-rc.1 (2024-07-09)

### Bug Fixes

- Add openpyxl to requirements.txt
  ([`19086a7`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/19086a7bd7d1cf17d2847f9870ca42cf69b8ed06))

- Added openpyxl==3.1.5 to the optional requirements section in requirements.txt. - Resolves the
  error related to missing optional dependency 'openpyxl' when reading pages with
  mkdocs-table-reader-plugin.


## v0.8.0 (2024-07-09)


## v0.8.0-rc.1 (2024-07-09)

### Features

- Add CSV/Excel data import feature to mkdocs
  ([`e2c3e30`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/e2c3e309840f641b61323a70a4af926742efcffe))

- Integrated mkdocs-table-reader-plugin v2.2.2 to enable importing data directly from CSV or Excel
  files into MkDocs pages. - Enhances documentation flexibility and data presentation.


## v0.7.0 (2024-07-06)


## v0.7.0-rc.1 (2024-07-05)

### Build System

- Update OpenSSH version in Dockerfile
  ([`775d1c1`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/775d1c12ee1c40cd9cf71a2acb1371fe53235d8f))

- Updated OpenSSH package version to 9.3_p2-r2 in Dockerfile to resolve package version conflict
  during build process. - Ensures compatibility with the latest Alpine Linux package repository.

### Features

- Add mkdoxy v1.2.4 to MkDocs
  ([`3197be3`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/3197be30f283bca36859c812abb55caf0b98fefc))

- Added mkdoxy v1.2.4, enhancing MkDocs with powerful documentation generation capabilities from
  source code. - Key features include: - Easy setup: Simply configure mkdoxy in mkdocs.yml. - Code
  snippets: Automatically generate code snippets. - Multi-project support: Ideal for combined C++
  and Python docs. - Multiple source directories: Allows specifying several source paths. - Custom
  templates: Use Jinja for tailored Doxygen documentation. - Custom Doxygen config: Fine-tune
  Doxygen settings per project. This integration significantly boosts the documentation process by
  leveraging Doxygen within the MkDocs ecosystem.


## v0.6.0 (2024-07-02)


## v0.6.0-rc.1 (2024-07-02)

### Features

- Add mkdocs-git-committers-plugin-2 v2.3.0
  ([`7725588`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/77255883d957b21218509641505ebd04c83bfb41))

- Integrated mkdocs-git-committers-plugin-2 to enhance documentation with detailed committer
  information.


## v0.5.0 (2024-07-02)


## v0.5.0-rc.1 (2024-07-02)

### Features

- Add jieba, git date & authors plugins
  ([`7d580ba`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/7d580ba62994646527012350d22650a82f12e1aa))

- Added jieba for Chinese language support in search. - Integrated
  mkdocs-git-revision-date-localized-plugin for document update dates. - Utilized
  mkdocs-git-authors-plugin for author display. - Removed mkdocs-material from requirements-dev.txt
  as the custom generator supersedes it. - Updated trunk for enhanced project structure and
  functionality.

These changes enhance the documentation generator with better language support, git integration for
  document metadata, and streamline development dependencies.


## v0.4.0 (2024-05-30)


## v0.4.0-rc.5 (2024-05-30)

### Code Style

- Update copyright.html and CI configuration
  ([`6358d90`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/6358d906ab7200243dd6993fb8bc409668c11955))

- Shorten the generator description in copyright.html - Replace author name with Docker username
  'ckwing' in copyright.html - Stage package.json after version update in CI configuration


## v0.4.0-rc.4 (2024-05-30)

### Bug Fixes

- Update CI config and Dockerfile
  ([`b7d5614`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/b7d5614a9a463a54a84e54f00f00eff52e730c2d))

- Use npm in CI for package.json version - Use COPY in Dockerfile for file handling


## v0.4.0-rc.3 (2024-05-30)

### Features

- Overwrite material in Dockerfile
  ([`ca7f447`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/ca7f447701f6071fb89317af7e12d4c28c0a560d))

Update Dockerfile to include a step that overwrites the existing files in
  /usr/local/lib/python3.11/site-packages/material with the material directory in the WORKDIR. This
  ensures that the latest material files are used during the build process.


## v0.4.0-rc.2 (2024-05-30)

### Code Style

- Revise notice text and Docker tag rules
  ([`0212281`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/021228193a719a51f32ea9d73917aa92defcb97f))

Update the generator notice in copyright.html to start with English, maintain a 1:1 ratio of English
  to Chinese characters, and apply HTML effects for improved readability and aesthetic appeal.
  Modify Docker image tagging in semantic-release.yml to only tag with major.minor or major (greater
  than 0) for release versions.

### Continuous Integration

- Adjust semantic release in CI config
  ([`0f32091`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/0f32091c6e9798580bda7e718bdcbed1dc04aca3))

Modify the 'Print next version' and 'Python Semantic Release' steps in the GitHub CI configuration
  to handle manual dispatch events differently. For manual dispatch events on the 'release/*'
  branch, the 'force' option is not used. This change ensures that the semantic release process
  behaves as expected for different types of workflow events and branches.

- Optimize force option in CI config
  ([`05b959f`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/05b959fe7605e7b3d18ad62a78c28cd98c5218e7))


## v0.4.0-rc.1 (2024-05-30)

### Build System

- Update Dockerfile to python:3.11-alpine
  ([`6f3af49`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/6f3af4999f5af3db13e9c9d017024d63e3d4fa89))

This commit updates the Dockerfile to use the python:3.11-alpine3.18 base image instead of the
  squidfunk/mkdocs-material:9.5.17 image. This change ensures compatibility with the latest version
  of Python and the Alpine Linux distribution.

These changes follow the conventions established in the recent repository commits.

- Update npm dependencies to latest versions
  ([`461f113`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/461f1131dc5c059c0b8d5f476ac223a657457ce6))

This commit updates the npm dependencies in the package.json file to their latest stable versions.
  Keeping dependencies up to date ensures compatibility, security, and access to new features.

These changes follow the conventions established in the recent repository commits.

- Update pyproject.toml and LICENSE
  ([`21bba30`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/21bba30e43e3f365b0e0424311676a1b68f92735))

This commit updates the dependencies in the pyproject.toml file and adds the MIT License to the
  repository.

The pyproject.toml update includes adding the 'hatch-nodejs-version' package with a minimum version
  of 0.3.0 and the 'trove_classifiers' package with a minimum version of 2023.10.18. These updates
  are necessary for compatibility and to ensure the project meets the required standards.

The LICENSE update grants permission to use, copy, modify, merge, publish, distribute, sublicense,
  and sell the software. It also includes the copyright notice and disclaimer of warranty.

These changes follow the conventions established in the recent repository commits.

- Update requirements.txt with deps
  ([`08ba398`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/08ba398d847947b075e6d285ced04e856db71380))

### Chores

- Include README.md in Docker build context
  ([`e319e26`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/e319e26046c057688aeb8ce41991b837399f1740))

This commit removes the exclusion of README.md from the Docker build context by updating the
  .dockerignore file. This resolves the Docker build error caused by Docker not being able to find
  the README.md file.

- Update Trunk CLI and plugin versions
  ([`0dcec79`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/0dcec797714f5f563fe01c1dafa1bcb8e69ddcb1))

### Features

- Import mkdocs-material directory
  ([`5051658`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/50516584f04f103359ec0b0dc93b069634f3bfc9))

This commit imports the material directory from the squidfunk/mkdocs-material repository. The style
  linter has been disabled for this directory to avoid conflicts with the original styling.


## v0.3.0 (2024-05-17)

### Continuous Integration

- Refine Docker image tagging in GitHub Actions
  ([`b9b26c2`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/b9b26c28c748bcc23fa2f499ed0a525a9b37a3ec))

This commit adjusts the Docker image tagging strategy in the semantic-release workflow. Now, images
  will be tagged with the full version, the major and minor version, the major version (excluding
  '0'), and either 'latest' or 'next' based on the version. This change improves the management and
  identification of Docker images.

- Remove "Configure Git Credentials"
  ([`eddabdb`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/eddabdbed3f68acdc2db68515355036801722cef))

This commit removes the "Configure Git Credentials" step from the Deploy Docs workflow. The
  Docker-based deployment does not require these credentials, making this step unnecessary.

- Update Docker tagging in GitHub Actions
  ([`6c131c6`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/6c131c60cc616d2586feec107671430a02df2047))

This commit modifies the semantic-release workflow to adjust the Docker image tagging strategy.
  Images will now be tagged with the full version, the major version with `.x` (if the major version
  is not `0`), and either the `latest` or `next` tag based on whether the version includes a `-`.
  This aligns with our versioning policy and aids in Docker image management.


## v0.3.0-rc.1 (2024-05-17)

### Bug Fixes

- Update path for copying stylesheets directory
  ([`0afa194`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/0afa194bb61b9f5656692a7ac060dc01a715cbd7))

### Continuous Integration

- Rename workflow to 'Deploy Docs'
  ([`4be7fdc`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/4be7fdc7ee6f5eda326f4377561cfc4c5632dfc6))

- Revise semantic-release syntax
  ([`3ae7b2c`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/3ae7b2c419a5ba069a83907631b4d598a0c3bc11))

- Update image tags based on SemVer components
  ([`9130ebc`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/9130ebc0bd51eb3106f91ebddce2226278901d77))

### Features

- Copy stylesheets directory for safekeeping
  ([`75421c7`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/75421c744f704f5fdfd291fca348d97bf6f39083))


## v0.2.0 (2024-04-30)

### Code Style

- Add config for linters to ignore CHANGELOG
  ([`a253e1a`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/a253e1a964d1881795bcf8fcab9ca79cda2c7c03))

### Continuous Integration

- Fix merge issue in semantic-release.yml
  ([`77fdf84`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/77fdf849762c9a10318650e47166fb0f579b2ebf))

- Resolve issue with merging release/0.2
  ([`0728c86`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/0728c86e65d5ad79bb40750906141434a54511c8))

- Update semantic-release workflow
  ([`8bf1db3`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/8bf1db3f8bc8f202214aaf56f0645abd3590c1ce))

- Update workflow to include prerelase flag
  ([`ff3ff9f`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/ff3ff9fb2b3b75720126ffcab7fc5575c4323c2b))

### Documentation

- Add deployment workflow for documentation
  ([`39556b3`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/39556b3a881f3773592e9cb93f8f81a24a489e8a))

- Update README for using DuoSpaced Material
  ([`3e07c29`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/3e07c29b13fa74f8db822797261d1193aa62b303))


## v0.2.0-rc.2 (2024-04-30)

### Features

- Add default_styles.css for font settings
  ([`9fad624`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/9fad624d8d175f7c68dff3c9a4ecd07620153bec))


## v0.2.0-rc.1 (2024-04-30)

### Continuous Integration

- Add debug workflow for semantic-release
  ([`a423e98`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/a423e982b34e1698f7965043cc689973af3f8c88))

- Exclude force argument and as_prerelease flag
  ([`4b970d5`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/4b970d50b3b343b559df391f85a398d7767b175d))

- Update Docker actions in semantic-release
  ([`ab96d49`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/ab96d49deca20b337b3648cd6394a2184f859db1))

- Update release configuration and Docker action
  ([`a5ade1b`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/a5ade1b1e4fb346d9b87f149c794a16f8a4502bf))

- Update semantic-release configuration
  ([`38d7577`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/38d7577164396ac6bf49ad93d86d1ecdaee6bc00))

- Update tags in semantic-release workflow
  ([`7e65a17`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/7e65a17d9f709b8b7dea5e93725675d020816faa))

- Update workflow to include as_prerelease flag
  ([`94b8607`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/94b86079700c5937be1c32bc5042adec947371c5))

- Update workflow to include force argument
  ([`7d310e4`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/7d310e4d5467a878ca595851edb9f77dd8a6cb1a))

- Update workflow to include ref argument
  ([`d3eecb8`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/d3eecb82003e4035f252c49d1ef39d7627869e60))

### Features

- Add font downloads to build script
  ([`df0eb96`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/df0eb9697fa1ae1ca8c58790239e19280a36de28))


## v0.1.0 (2024-04-27)


## v0.1.0-rc.1 (2024-04-26)

### Build System

- Update requirements and requirements-dev
  ([`9b3f17e`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/9b3f17e182f6d68e973cca46d966181d77a754c8))

### Chores

- Add config files and ignore files and dirs
  ([`8eeb679`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/8eeb6798d256aeae5d6889289e70e9a18ae435ab))

- Update pre-commit hooks to use gitlint
  ([`61d924a`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/61d924a0124d589e91c9807d848467bab8bd9262))

### Code Style

- Add hook and update yamllint configuration
  ([`98b4b7d`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/98b4b7d404bbd6ec9930d6c49dfe3aa4d28a2c2a))

### Continuous Integration

- Add prerelease condition in semantic-release
  ([`2d3e221`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/2d3e2217587f5ac67d6370bae5c063fff5fe7426))

- Add semantic-release workflow
  ([`791e11e`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/791e11e04f134e65594c33f25a9e9498081d5644))

- Fix .env file sync issue in semantic-release
  ([`2eb4138`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/2eb4138aaef0963dca4125eaf289faeaed0798ef))

- Fix git-committer-name and git-committer-email
  ([`f4df6b3`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/f4df6b33500515eea6aa1383421cb5bae6d21172))

- Fix git_committer_name in semantic-release
  ([`7395a49`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/7395a4919991cd494ae11e2b49124df37f0bb538))

- Fix push commands in semantic-release workflow
  ([`277149f`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/277149fd2e0e735df1b618144a5923621af7aaa1))

- Include 'develop' branch in semantic-release
  ([`8f4c6d0`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/8f4c6d01c4489ba522738cc3b84cd7cb30c4cec6))

- Include GPG signing and Docker image build
  ([`5c89d46`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/5c89d46dba738b9cd158929bf99c3ba9b421ce63))

- Include SSH signing keys in semantic-release
  ([`473a26c`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/473a26c678ecd49be6ebd0ffd41c5aa6b08cbff9))

- Update root_options in semantic-release
  ([`e3187a6`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/e3187a67e1615765cf16eab2d6835936896ca7be))

### Features

- Bootstrap the project documentation
  ([`28eb72e`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/28eb72ef2333f900aa79f57a1d4d7e334a1d05e5))

- Update Docker and configure OCI labels
  ([`98098bf`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/98098bf97ab4c6b5aef150715df77f2a5055fe31))

- Update Docker config and add mkdocs files
  ([`a02ed15`](https://github.com/zhang-jia-rong/duospaced-mkdocs-material/commit/a02ed15afd6dcc824fb1c4d948f516657b7ca90a))
