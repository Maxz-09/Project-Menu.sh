#!/bin/bash

#program belajar kata penghubung

#warna

default="\033[00m"
merah="\033[31m"
hijau="\033[32m"

#program

enter() {
    clear
    echo
    echo -e "Checking system files, make sure your internet is Good"
    echo
    read -r -s -p $'press enter to continue / ctrl+z to exit...\n'
    function back_option () {
        clear 
    }
    utama
}

utama() {
    echo " "
    echo -e "\e[92m • [!] Detect resource...."
    sleep 1
    cekbahan
}

cekbahan() {
    echo " "
    dpkg -s python &> /dev/null
if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] python installed"
    else
    echo " "
    echo -e "\e[31m • [/] Installing python...."
    echo " "
    apt install python -y
    echo " "
    sleep 2
    echo -e "\e[92m • [✓] python installed"
    echo " "
fi
    dpkg -s figlet &> /dev/null
    if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] figlet installed"
    else
    echo -e "\e[31m • [/] Installing figlet...."
    echo " "
    apt install figlet -y
    echo " "
    sleep 2
    echo -e "\e[92m • [✓] figlet installed"
    echo " "
fi
    dpkg -s git &> /dev/null
if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] git installed"
    else
    echo -e "\e[31m • [/] Installing git...."
    echo " "
    apt install git -y
    echo " "
    sleep 2
    echo -e "\e[92m • [✓] git installed"
    echo " "
fi
    dpkg -s pv &> /dev/null
if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] pv installed"
    else
    echo -e "\e[31m • [/] installing pv...."
    echo " "
    apt install pv -y
    echo " "
    sleep 2
    echo -e "\e[92m • [✓] pv installed"
    echo " "
fi
    sleep 1
    echo " "
    echo -e "\e[92m • [✓] Succssesfully"|pv -qL 30
    sleep 2
    menu
}

menu() {
    clear
    echo -e -n $default;figlet "SCRIPT"
    echo
    echo -e $default" • Select an options [1/3] :"
    echo
    echo -e " • [1] Play"
    echo -e " • [2] Nano"
    echo -e " • [3] Exit"
    echo
    mainmenu
}

mainmenu() {
    echo -e -n " • Select > ";read pil
    echo
if [ $pil == "1" ];then
    clear
    echo -e -n ;figlet "Credit"
    echo -e "Author : Maxtream_09"
    echo -e "id mlbb: 551143556"
    echo -e "irssi  : max-room"
    sleep 1
    clear
    bash .hack.sh
fi
if [ $pil == "2" ];then
    nano main.sh
    menu
fi
if [ $pil == "3" ];then
    clear
    echo -e $hijau" • [✓] Exit"
    exit
    else
    echo -e $merah" • [!] Input denied"
    sleep 2
    clear
    menu
fi
}
enter