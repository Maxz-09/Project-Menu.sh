#!/bin/sh

#program belajar kata penghubung

#warna

default="\033[00m"
merah="\033[31m"
hijau="\033[32m"

#program

enter() {
    clear
    echo
    echo -e "While checking system files, make sure your internet is good"
    echo
    read -r -s -p $'press enter to continue / ctrl + z to exit...\n'
    function back_option () {
    clear
}
    cekbahan
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
    echo " "
    else
    echo " "
    echo -e "\e[31m • [/] Installing python..."
    echo " "
    pkg install python -y
    echo " "
    echo -e "\e[92m • [✓] python installed"
    echo " "
fi
    dpkg -s figlet &> /dev/null
    if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] figlet installed"
    echo " "
    else
    echo -e "\e[31m • [/] Installing figlet...."
    echo " "
    pkg install figlet -y
    echo " "
    echo -e "\e[92m • [✓] figlet installed"
    echo " "
fi
    dpkg -s git &> /dev/null
if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] git installed"
    echo " "
    else
    echo -e "\e[31m • [/] Installing git...."
    echo " "
    pkg install git -y
    echo " "
    echo -e "\e[92m • [✓] git installed"
    echo " "
fi
    dpkg -s pv &> /dev/null
if [ $? -eq 0 ];then
    echo -e "\e[92m • [✓] pv installed"
    echo " "
    else
    echo -e "\e[31m • [/] installing pv...."
    echo " "
    pkg install pv -y
    echo " "
    echo -e "\e[92m • [✓] pv installed"
    echo " "
fi
    sleep 1
    echo -e "\e[92m • [✓] Succssesfully"|pv -qL 10
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
    echo -e "Author : Maxtream"
    echo -e "id mlbb: 551143556"
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
