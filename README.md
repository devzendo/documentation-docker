# documentation-docker

## What is this?
A Docker container definition, containing all the tools I use to convert LaTeX
files and Mermaid diagrams into publishable PDFs.

## Project Status
Started September 2025.
Last changes in September 2025.

# Overview
I use latexmk and a variety of additions, to create PDFs. I write using
TeXPad on an old Intel MacBook/macOS Catalina, with BibDesk handling my
bibliographic database. At a push I'd use vim.

This container contains all the LaTeX tools.

Most development is done on Linux Mint 22.1, which is based on Ubuntu 24.04,
which is based on Debian trixie/sid.

This container is based on Debian trixie/sid.

This container makes publishing, by providing a working set of all necessary
typesetting tools. I use this container on the above Mint system.

# Building
You will need docker: install the `docker.io` and `docker-buildx` packages.
Add yourself to the `docker` group:
```
  sudo usermod -aG docker $USER
  newgrp docker
```

To have cloned this project, you'll need `git`.

To build the image, run `build-image.sh`. This builds an image tagged `documentation-latest`.

To start the image and use the container, run `documentation-container.sh`.

In the container, `cd` to your documentation tree, and run `make`.

# License, Copyright & Contact info
This code is released under the Apache 2.0 License: http://www.apache.org/licenses/LICENSE-2.0.html.

(C) 2025 Matt J. Gumbley.

matt.gumbley@devzendo.org

Mastodon: @M0CUV@mastodon.radio

http://devzendo.github.io/


