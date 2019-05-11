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
FROM debian:stretch-slim

# Some metadata.
MAINTAINER Dave Kerr <github.com/dwmkerr>

# Install pstree (useful for explicitly showing the current shell!)
RUN apt-get update -y
RUN apt-get install -y psmisc

# Install a bunch o shells.
RUN apt-get install -y csh tcsh ksh zsh fish

# Add the test script.
COPY ./test/test.sh ./test.sh
RUN chmod +x ./test.sh
