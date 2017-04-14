FROM reflectoring/build-image-base:latest

LABEL maintainer "matthias.balke@googlemail.com"

RUN apk --no-cache add \
    "ca-certificates=20161130-r1" \
    "openssl=1.0.2k-r0"  \
    "ncurses=6.0-r7" \
    "coreutils=8.26-r0" \
    "python2=2.7.13-r0" \
    "make=4.2.1-r0" \
    "gcc=6.2.1-r1" \
    "g++=6.2.1-r1" \
    "libgcc=6.2.1-r1" \
    "linux-headers=4.4.6-r1"

# compile nvm from sources
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.1/install.sh | bash

# RUN nvm install -s ...
