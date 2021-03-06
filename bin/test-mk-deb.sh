#!/bin/sh -xe

# ----------------------------------------------------------------------
# SSLCAUDIT - a tool for automating security audit of SSL clients
# Released under terms of GPLv3, see COPYING.TXT
# Copyright (C) 2012 Alexandre Bezroutchko abb@gremwell.com
# ----------------------------------------------------------------------

# This script rebiulds .deb package, (re)installs in locally, and lists
# files deployed by the package.

bin/mk-deb.sh
sudo dpkg -i deb_dist/python-sslcaudit_1.0-1_all.deb 
dpkg -L python-sslcaudit

cd /tmp
which sslcaudit
sslcaudit -T 1 --user-cn localhost

