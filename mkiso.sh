#!/usr/bin/bash
echo "[*] Update/Install archiso"
sudo pacman --needed --noconfirm -Sy archiso
echo "[*] Remove Folders: out, work"
sudo rm -rfv {work,out}
echo "[*] Start creating Iso"
sudo mkarchiso -v archlive
echo "[!] We are done!"
echo "[*] The Iso will be saved in the 'out' folder"
exit
