#!/usr/bin/bash
if [[ ! -f /usr/bin/pacman ]]; then
	echo "[!] This is not Archlinux"
	echo "[*] Please run this Script with Archlinux"
	exit
fi
echo "[*] Update/Install archiso"
sudo pacman --needed --noconfirm -Sy archiso
echo "[*] Update Submodules"
(cd archlive/airootfs/var/setup/git; git checkout main; git pull)
echo "[*] Remove Folders: out, work"
sudo rm -rfv {work,out}
echo "[*] Start creating Iso"
sudo mkarchiso -v archlive
echo "[!] We are done!"
echo "[*] The Iso will be saved in the 'out' folder"
exit
