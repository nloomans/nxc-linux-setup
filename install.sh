#!/bin/sh
cp ./70-nxt.rules /etc/udev/rules.d
usermod -a -G nxt $(whoami)
cp ./nxc /usr/bin/nxc
echo "please run \`sudo visudo\` and add \"`whoami` ALL = NOPASSWD: /usr/local/bin/nbc\""
