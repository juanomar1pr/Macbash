#!/bin/sh
show_menu(){
    normal=`echo "\033[m"`
    menu=`echo "\033[35m"` #purple
    number=`echo "\033[46m"` #cyan
    bgred=`echo "\033[41m"`
    fgred=`echo "\033[31m"`
    printf "\n${menu}*********************************************${normal}\n"
    printf "${menu}**${number} 1)${menu} Informacion de System Mac  ${normal}\n"
    printf "${menu}**${number} 2)${menu} Lista de Tipos de Datos ${normal}\n"
    printf "${menu}**${number} 3)${menu} informacion de Bluetooth  ${normal}\n"
    printf "${menu}**${number} 4)${menu} Commando ${normal}\n"
    printf "${menu}**${number} 5)${menu} Abrir Nueva terminal${normal}\n"
    printf "${menu}**${number} 6)${menu} ARP${normal}\n"
    printf "${menu}*********************************************${normal}\n"
    printf "Please enter a menu option and enter or ${fgred}x to exit. ${normal}"
    read opt
}

option_picked(){
    msgcolor=`echo "\033[0;95m"` # bold red
    normal=`echo "\033[00;00m"` # normal white
    message=${@:-"${normal}Error: No message passed"}
    printf "${msgcolor}${message}${normal}\n"
}

clear
show_menu
while [ $opt != '' ]
    do
    if [ $opt = '' ]; then
      exit;
    else
      case $opt in
        1) clear;
            option_picked "Selecionado 1";
            printf "` system_profiler SPSoftwareDataType SPHardwareDataType`";
            show_menu;
        ;;
        2) clear;
            
        option_picked "Selecionado 2 :";
            printf "`system_profiler -listDataTypes`";
            printf "\n${menu}*********************************************${normal}\n"
             printf "\n${menu}Ejecute con: system_profiler [lista] ";
            show_menu;
        ;;
        3) clear;
            option_picked "Selecionado 3 ";
            printf "`system_profiler SPBluetoothDataType`";
            show_menu;
        ;;
        4) clear;
            option_picked "Entre linea de Comando  ";
            printf "\n${menu}*********************************************${normal}\n"
            printf "Ejemplos : pwd  arp -a  whoami system_profile  ";
            printf "\n${menu}*********************************************${normal}\n"
            sleep 4 
             read var1
             clear; 
            printf "`$var1`"
            show_menu;
        ;;
        5) clear;
            option_picked "Selecionado 5 ";
            printf "`osascript -e 'tell app "Terminal"
   do script "sudo su"
end tell'
`";
            show_menu;
        ;;
        6) clear;
            option_picked "Selecionado 6 ";
            printf "`arp -a`";
            show_menu;
        ;;
        x)exit;
        ;;
        \n)exit;
        ;;
        *)clear;
            option_picked "Pick an option from the menu";
            show_menu;
        ;;
      esac
    fi
done