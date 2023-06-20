#!/bin/bash

#mainmenu

wait() {
    clear
    echo
    echo "[!] Memulai script bash...."
    sleep 1
    clear
    echo
    echo "[/] Mohon Tunggu...."
    sleep 3
    menu
}
menu() {
    clear
    echo "only menu display, no output yet"
    figlet "Trava"
    echo
    echo " Select an options [1/7]"
    echo
    echo " [1] Hack Akun Instagram"
    echo " [2] Hack Akun Facebook"
    echo " [3] Hack Akun Twiter"
    echo " [4] Hack Akun Tiktok"
    echo " [5] Hack Akun Pubg"
    echo " [6] Hack Akun Mlbb"
    echo " [7] Hack Akun Ff"
    echo
    mainmenu
}
mainmenu() {
    echo -e -n " Pilih > ";read pil
    echo
    if [ $pil == "1" ];then
    clear
    sleep 2
    menu
    fi
}
wait