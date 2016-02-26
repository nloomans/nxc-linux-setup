# nxc-linux-setup
this script will install the nxc compilor for linux.

## WARNING
This script is still in extremely early development, and,
therefor, the code is likely broken.

## Installation
1. run `sudo ./install.sh`
2. run `sudo visudo`
3. add "_username_ ALL = NOPASSWD: /usr/local/bin/nbc" to the bottom of the file.

**note**: _only_ use visudo to edit the sudo configuration! Or you might lock yourself out of the system!

## Usage
1. connect the NXT brick to the computer
2. run `nxc /path/to/file.nxc`

**note**: nxc just runs nbc with the correct arguments.
