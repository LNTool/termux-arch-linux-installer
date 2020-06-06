## Arch Linux Installer on Termux

This is an installer that can run Arch Linux on your Android device.
It needs Termux.
You can find it at Google Play, F-Droid, Coolapk
## Method of use

Open Termux and enter:
``
bash -c "$(curl -L https://raw.githubusercontent.com/MC-EO/termux-arch-linux-installer/master/arch-installer.sh)"
``

## DNS server configuration method:

``
wget https://raw.githubusercontent.com/MC-EO/termux-arch-linux-installer/master/resolv.conf
``

``
mv resolv.conf ${HOME}/arch-arm64/etc/resolv.conf
``
