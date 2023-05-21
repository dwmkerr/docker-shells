# docker-shells
#
# A docker image which contains many popular shells, just for experimentation.y 
#
# - sh
# - bash
# - csh
# - ksh
# - zsh
# - fish
FROM debian:bullseye-slim

# Some metadata.
MAINTAINER Dave Kerr <github.com/dwmkerr>

# Install pstree (useful for explicitly showing the current shell!)
RUN apt-get update -y
RUN apt-get install -y psmisc

# Install tools we'll need to compile shells.
RUN apt-get install -y make gcc

# Install a bunch o shells.
RUN apt-get install -y \
    csh \
    tcsh \
    ksh \
    zsh \
    fish \
    ash \
    dash

# Add the test script.
COPY ./test/test.sh ./test.sh
RUN chmod +x ./test.sh

# Add the heirloom shell code, then compile it.
COPY heirloom-sh-050706.tar.bz2 /tmp/heirloom-sh-050706.tar.bz2
RUN tar -jxvf /tmp/heirloom-sh-050706.tar.bz2 -C /tmp/
RUN cd /tmp/heirloom-sh-050706 && make
RUN cp /tmp/heirloom-sh-050706/sh /bin/heirloom-sh
