# bash
# by mr.patrix
# install arch linux
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NC='\e[0m'
clear

echo -e " ${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"
echo ""
echo ""
echo -e " ${GREEN} installing proot..."
pkg update
pkg install proot-distro pulseaudio vim
pkg install root-repo x11-repo
echo ""
echo -e " ${GREEN} installing pulseaudio..."
pkg install proot pulseaudio -y
termux-setup-storage
echo ""
echo -e " ${GREEN} installing arch linux... "
proot-distro install archlinux

cat <<EOF > ~/archlinux.sh
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login archlinux
EOF

chmod +x ~/archlinux.sh
mv ~/archlinux.sh $PREFIX/bin/archlinux


cat <<EOF > ~/al.sh
#!/data/data/com.termux/files/usr/bin/bash
proot-distro login archlinux
EOF
chmod +x ~/al.sh
mv ~/al.sh $PREFIX/bin/al

proot-distro login archlinux -- pacman -Syu --noconfirm
proot-distro login archlinux -- pacman -S neofetch --noconfirm
proot-distro login archlinux -- bash -c 'echo "clear" >> ~/.bashrc'
proot-distro login archlinux -- bash -c 'echo "neofetch" >> ~/.bashrc'

proot-distro login archlinux -- bash -c "
pacman -Syu --noconfirm
pacman -S sudo --noconfirm
echo '%wheel ALL=(ALL) ALL' >> /etc/sudoers
"
#!/bin/bash

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

banner() {
    
}


login


clear
echo -e "${GREEN} ##############################################"
echo -e "${GREEN}╭━━━┳━━━┳━━━┳╮╱╭╮╭╮╱╱╭━━┳━╮╱╭┳╮╱╭┳━╮╭━╮
┃╭━╮┃╭━╮┃╭━╮┃┃╱┃┃┃┃╱╱╰┫┣┫┃╰╮┃┃┃╱┃┣╮╰╯╭╯
┃┃╱┃┃╰━╯┃┃╱╰┫╰━╯┃┃┃╱╱╱┃┃┃╭╮╰╯┃┃╱┃┃╰╮╭╯
┃╰━╯┃╭╮╭┫┃╱╭┫╭━╮┃┃┃╱╭╮┃┃┃┃╰╮┃┃┃╱┃┃╭╯╰╮
┃╭━╮┃┃┃╰┫╰━╯┃┃╱┃┃┃╰━╯┣┫┣┫┃╱┃┃┃╰━╯┣╯╭╮╰╮
╰╯╱╰┻╯╰━┻━━━┻╯╱╰╯╰━━━┻━━┻╯╱╰━┻━━━┻━╯╰━╯"
echo "##############################################"
echo ""
echo ""
echo "You can now type  archlinux or al  to start ArchLinux"
echo "你现在可以输入 archlinux or al  启动ArchLinux"
echo "BY MR.PATRIX"
rm -rf arch.sh
