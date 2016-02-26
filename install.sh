#!/bin/sh
echo "copying nbc..."
cp ./nbc /usr/local/bin
echo "copying nxc..."
cp ./nxc /usr/bin
echo "copying rules..."
cp ./70-nxt.rules /etc/udev/rules.d
echo "creating nxt group..."
sudo -u $SUDO_USER groupadd nxt
sudo -u $SUDO_USER echo "adding `whoami` to nxt group..."
sudo -u $SUDO_USER usermod -a -G nxt $(whoami)
sudo -u $SUDO_USER echo "to finish the installation, please run \`sudo visudo\` and add \"`whoami` ALL = NOPASSWD: /usr/local/bin/nbc\""
