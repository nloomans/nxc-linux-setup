#!/bin/sh
if [ "$SUDO_USER" != "" ]; then
  user="$SUDO_USER"
else
  user=`whoami`
fi
  
if [ "$(id -u)" -ne 0 ]; then
  echo "This script has to be run as root (try \`sudo ./install.sh\`)"
  exit 1
fi

echo "copying nbc..."
cp ./nbc /usr/local/bin
echo "copying nxc..."
cp ./nxc /usr/bin
echo "copying rules..."
cp ./70-nxt.rules /etc/udev/rules.d
echo "creating nxt group..."
groupadd nxt
echo "adding $user to nxt group..."
usermod -a -G nxt $user
echo "installation sucsesful!"
