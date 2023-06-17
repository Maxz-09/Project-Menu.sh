#!/bin/sh

#mainmenu

wait() {
    clear
    echo "[!] Memulai script bash...."
    sleep 1
    clear
    echo "[/] Mohon Tunggu...."
    sleep 3
    menu
}
menu() {
    clear
    figlet "Trava"
    echo
    echo "Gunakanlah dengan bijak"
    echo
    echo "[1] Hack Akun Instagram"
    echo "[2] Hack Akun Facebook"
    echo "[3] Hack Akun Twiter"
    echo "[4] Hack Akun Tiktok"
    echo "[5] Hack Akun Pubg"
    echo "[6] Hack Akun Mlbb"
    echo "[7] Hack Akun Ff"
    echo
    mainmenu
}
mainmenu() {
    echo -e -n "Pilih > ";read pil
    echo
    if [ $pil == "1" ];then
    clear
    sleep 2
    menu
    fi
}
wait
