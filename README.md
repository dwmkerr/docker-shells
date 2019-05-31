# docker-shells [![CircleCI](https://circleci.com/gh/dwmkerr/docker-shells.svg?style=shield)](https://circleci.com/gh/dwmkerr/docker-shells) [![GuardRails badge](https://badges.production.guardrails.io/dwmkerr/docker-shells.svg)](https://www.guardrails.io)

[![Docker Hub Badge](http://dockeri.co/image/dwmkerr/shells)](https://registry.hub.docker.com/u/dwmkerr/shells/)

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

This image also includes [the Heirloom Shell](http://heirloom.sourceforge.net/sh.html), which is an open-source port of the _original_ Bourne Shell.

You can see how shells are organised with this command:

```bash
root@2ef086450728:/# ls -l /bin/*sh*
lrwxrwxrwx 1 root root       4 Jan 24  2017 /bin/ash -> dash
-rwxr-xr-x 1 root root 1099016 May 15  2017 /bin/bash
-rwxr-xr-x 1 root root  155040 Sep 30  2016 /bin/bsd-csh
lrwxrwxrwx 1 root root      21 May 31 17:23 /bin/csh -> /etc/alternatives/csh
-rwxr-xr-x 1 root root  117208 Jan 24  2017 /bin/dash
-rwxr-xr-x 1 root root  138224 May 31 17:28 /bin/heirloom-sh
lrwxrwxrwx 1 root root      21 May 31 17:23 /bin/ksh -> /etc/alternatives/ksh
-rwxr-xr-x 1 root root 1574040 May 31  2017 /bin/ksh93
lrwxrwxrwx 1 root root       4 May 15  2017 /bin/rbash -> bash
lrwxrwxrwx 1 root root       5 May 31  2017 /bin/rksh -> ksh93
lrwxrwxrwx 1 root root       5 May 31  2017 /bin/rksh93 -> ksh93
lrwxrwxrwx 1 root root       3 Nov 19  2017 /bin/rzsh -> zsh
lrwxrwxrwx 1 root root       4 Jan 24  2017 /bin/sh -> dash
lrwxrwxrwx 1 root root       4 Jan 24  2017 /bin/sh.distrib -> dash
-rwxr-xr-x 1 root root  420616 Feb  9  2017 /bin/tcsh
-rwxr-xr-x 1 root root  819744 Nov 19  2017 /bin/zsh
-rwxr-xr-x 1 root root     843 Dec 23  2016 /bin/zsh5
```

Note that as is common in Linux distributions, the original `sh` program is a link to a Posix compliant shell (in this case, Dash). Use the `heirloom-sh` program if you want the original `sh` experience.
