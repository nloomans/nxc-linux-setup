#!/bin/sh
cp ./70-nxt.rules /etc/udev/rules.d
sudo -u $SUDO_USER usermod -a -G nxt $(whoami)
cp ./nxc /usr/bin/nxc
sudo -u $SUDO_USER echo "please run \`sudo visudo\` and add \"`whoami` ALL = NOPASSWD: /usr/local/bin/nbc\""
