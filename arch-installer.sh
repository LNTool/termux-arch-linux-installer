#!/data/data/com.termux/files/usr/bin/bash
clear
echo -e "\033[33mInstalling required dependencies"
apt-get update
apt-get upgrade
apt-get install axel figlet proot 
clear
echo -e "\033[32m"
figlet Termux   Arch
echo -e "\033[33m[*] Script version: 1.2"
echo -e "\033[32m[@] GithubID : 萌新EO"
echo -e "\033[32m[@] Github : https://github.com/MC-EO/termux-arch-linux-installer/tree/master"
echo -e "\033[31m[!] This script can only be installed on aarch64"
echo -e "\033[33m[!] The installation will consume 1 GB of your storage space"
cd ${HOME}
if [ ! -d arch-arm64 ];then
	mkdir -p arch-arm64
fi
cd arch-arm64
if [ ! -e ArchLinuxARM-aarch64-latest.tar.gz ];then
	read -r -p "[?] ArchLinux ARM-aarch64-latest.tar.gz was not detected. Download? (Yes/no) " input
	case $input in 
		[yY][eE][sS]|[yY])
		echo -e "\033[32m"
                figlet Install  Arch
		echo -e "\033[36m[+] From archlinuxarm.org Download ArchLinux ARM-aarch64-latest.tar.gz"
		axel http://os.archlinuxarm.org/os/ArchLinuxARM-aarch64-latest.tar.gz
		tar -xzvf ArchLinuxARM-aarch64-latest.tar.gz
		cd ${HOME}
		mv arch-arm64/ArchLinuxARM-aarch64-latest.tar.gz ${HOME}/
		axel https://raw.githubusercontent.com/MC-EO/termux-arch-linux-installer/master/startarch
                mv startarch $PREFIX/bin/startarch
		echo -e "\033[32m[*] Install OK"
		echo -e "\033[32m[!] You can enter 'startarch' into your archlinux"
		echo -e "\033[0m"
		;;
		[nN][oO]|[nN]*)
		clear
		echo -e "\033[31m"
                figlet Installation Cancellation
		echo -e "\033[31m[!] You have terminated the installation"
		echo -e "\033[0m"
		;;
	esac
read -r -p "[?] ArchLinux ARM-aarch64-latest.tar.gz was not detected. Download? (Yes/no) " 
inputcase $input in
[yY][eE][sS]|[yY])
tar -xzvf ArchLinuxARM-aarch64-latest.tar.gz
axel https://raw.githubusercontent.com/MC-EO/termux-arch-linux-installer/master/startarch
mv startarch $PREFIX/bin/startarch
echo -e "\033[32mInstall OK"
echo -e "\033[32mYou can start archlinux by typing the'startarch'"
;;
[nN][oO]|[nN])
echo -e "\033[31mcancel"
;;
fi
