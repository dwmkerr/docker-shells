# docker-shells [![CircleCI](https://circleci.com/gh/dwmkerr/docker-shells.svg?style=shield)](https://circleci.com/gh/dwmkerr/docker-shells) [![ImageLayers Badge](https://badge.imagelayers.io/dwmkerr/shells:latest.svg)](https://imagelayers.io/?images=dwmkerr/shells:latest 'Get your own badge on imagelayers.io')

[![Docker Hub Badge](http://dockeri.co/image/dwmkerr/shells)](https://registry.hub.docker.com/u/dwmkerr/shells/) [![GuardRails badge](https://badges.production.guardrails.io/dwmkerr/docker-shells.svg)](https://www.guardrails.io)

A simple Debian Stretch based image with all common shells pre-installed:

```bash
docker run -it dwmkerr/shells
root@c80cd43429f5:/# cat /etc/shells
# /etc/shells: valid login shells
/bin/sh
/bin/dash
/bin/bash
/bin/rbash
/bin/tcsh
/usr/bin/tcsh
/bin/csh
/bin/ksh93
/bin/rksh93
/bin/zsh
/usr/bin/zsh
/usr/bin/fish
```

Used to quickly demo shell features, as part of my [effective-shell](https://github.com/dwmkerr/effective-shell) series.
