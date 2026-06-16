#
# Documentation docker container definition.
#
FROM amd64/debian:trixie-slim
RUN set -ex; apt-get update
#
# Make and other essentials
#
RUN set -ex; apt-get install -y build-essential make git sudo
#
# All the LaTeX goodies
#
RUN set -ex; apt-get install -y latexmk luametatex latexdiff
RUN set -ex; apt-get install -y fontconfig texlive-fonts-recommended \
  texlive-font-utils fonts-urw-base35 texlive-fonts-extra 
RUN set -ex; apt-get install -y fonts-texgyre fonts-texgyre-math tex-gyre



