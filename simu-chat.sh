#!/bin/bash

clear
# dx color
r='\033[1;91m'
p='\033[1;95m'
y='\033[1;93m'
g='\033[1;92m'
n='\033[1;0m'
b='\033[1;94m'
c='\033[1;96m'

# dx Symbol
X='\033[1;92m[\033[1;00m⎯꯭̽𓆩\033[1;92m]\033[1;96m'
D='\033[1;92m[\033[1;00m〄\033[1;92m]\033[1;93m'
E='\033[1;92m[\033[1;00m×\033[1;92m]\033[1;91m'
A='\033[1;92m[\033[1;00m+\033[1;92m]\033[1;92m'
C='\033[1;92m[\033[1;00m</>\033[1;92m]\033[92m'
lm='\033[1;96m▱▱▱▱▱▱\033[1;0m〄\033[1;96m▱▱▱▱▱▱\033[1;00m'
dm='\033[1;93m▱▱▱▱▱▱\033[1;0m〄\033[1;93m▱▱▱▱▱▱\033[1;00m'

z="
";Uz='/ver';Vz='sion';Ez='ME/.';Dz='/$HO';Xz='"';Bz='EN_D';Sz='DDEN';dz='R"';Lz='IR/u';Pz='VERS';Rz='"$HI';Jz='_FIL';Hz='USER';Nz='ame.';cz='N_DI';Yz='mkdi';Tz='_DIR';Wz='.txt';Zz='r -p';Oz='txt"';bz='IDDE';Cz='IR="';Mz='sern';Az='HIDD';Iz='NAME';az=' "$H';Kz='E="$';Gz='imu"';Fz='dx-s';Qz='ION=';
eval "$Az$Bz$Cz$Dz$Ez$Fz$Gz$z$Hz$Iz$Jz$Kz$Az$Bz$Lz$Mz$Nz$Oz$z$Pz$Qz$Rz$Sz$Tz$Uz$Vz$Wz$Xz$z$Yz$Zz$az$bz$cz$dz"

v_save() {
    echo "version 1 1.1" > "$VERSION"
}

if [ -f "$VERSION" ]; then
    version=$(cat "$VERSION")
else
    v_save
    version=$(cat "$VERSION")
fi
up() {
clear
messages=$(curl -s "$URL/check_distro" | jq -r --arg vs "$version" '.[] | select(.message == $vs) | "\(.message)"')

# Check if any messages were found and display them
if [ -n "$messages" ]; then
    # Display messages
    echo -e " ${A} ${c}Tools Updated ${n}| ${c}New ${g}$messages"
    sleep 3
    clear
    update
else
    echo
    clear
fi
}

load() {
clear
echo -e " ${r}●${n}"
sleep 0.2
clear
echo -e " ${r}●${y}●${n}"
sleep 0.2
clear
echo -e " ${r}●${y}●${b}●${n}"
sleep 0.2
}
inter() {
clear
echo
echo -e "               ${g}╔═══════════════╗"
echo -e "               ${g}║ ${n}</>  ${c}DARK-X${g}   ║"
echo -e "               ${g}╚═══════════════╝"
echo -e "  ${g}╔════════════════════════════════════════════╗"
echo -e "  ${g}║  ${C} ${y}Checking Your Internet Connection¡${g}  ║"
echo -e "  ${g}╚════════════════════════════════════════════╝${n}"
while true; do
    curl --silent --head --fail https://github.com > /dev/null
    if [ "$?" != 0 ]; then
echo -e "              ${g}╔══════════════════╗"
echo -e "              ${g}║${C} ${r}No Internet ${g}║"
echo -e "              ${g}╚══════════════════╝"
        sleep 2.5
    else
        break
    fi
done
clear
}

# Set the server URL
URL="https://dark-chat-server.glitch.me/"

update() {
clear
banner
spin() {
    local pid=$!
    local delay=0.40
    local spinner=('█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█')

    while ps -p $pid > /dev/null; do
        for i in "${spinner[@]}"; do
            tput civis
            echo -ne "\033[1;96m\r [+] Downloading..please wait.........\e[33m[\033[1;92m$i\033[1;93m]\033[1;0m   "
            sleep $delay
            printf "\b\b\b\b\b\b\b\b"
        done
    done
    printf "   \b\b\b\b\b"
    tput cnorm
    printf "\e[1;93m [Done]\e[0m\n"
    echo
    sleep 3
}

download_file() {
    local url=$1

    curl -O "$url" &> /dev/null &

    spin
}
cd $HOME
banner
download_file "https://github.com/DARK-H4CKER01/DX-SIMU.git"
cd DX-SIMU
bash install.sh
}

report() {
# Report Developer
ZONE=$(getprop persist.sys.timezone)
COUNTRY=$(getprop gsm.operator.iso-country)
SIM=$(getprop gsm.operator.alpha)
LANG=$(getprop mdc.sys.locale)
WIFI=$(getprop persist.sys.vzw_wifi_running)
CREATE=$(getprop ro.vendor_dlkm.build.date)
UP=$(date +'%Y-%m-%d %H:%M')
SHELL=$(basename $SHELL)
TM=$(date +"%T")
MODEL=$(getprop ro.product.model)
VENDOR=$(getprop ro.product.manufacturer)
VS=$(getprop ro.build.version.release)
ABI_LIST=$(getprop ro.product.cpu.abi)
ABI_LIST+=","$(getprop ro.product.cpu.abi2)
pwd=$(pwd)
clear
echo ""
echo ""
echo -e "${c}               __"
echo -e "       _(\    |${r}@@${c}|        ${g}Hey $username 👋 ${c}"
echo -e "      (__/\__ \--/ __    ${p}Enter Your Report${c}"
echo -e "         \___|----|  |   __"
echo -e "             \ ${p}][ ${c}/\ )_ / _\ "
echo -e "             /\__/\ \__O (__"
echo -e "            (--/\--)    \__/"
echo -e "            _)(  )(_"
echo -e "            ---  --- ${p}"
echo ""
echo -e " ${A} ${c}Enter Your ${g}Report${c}"
echo
echo
read -p "[+]──[Enter Your Report]────► " USER
echo

MESSAGE="
〄 SIMU USER ⎙
USER: $username
PWD: $pwd
VENDOR: $VENDOR
MODEL: $MODEL
ABIs: $ABI_LIST
VS: $VS
UP: $UP
SHELL: $SHELL
TIME: $TM
COUNTRY: $COUNTRY
SIM: $SIM
WIFI: $WIFI
TIME ZONE: $ZONE
DEVICE CREATE TIME: $CREATE
FINGERPRINT: $FINGERPRINT

USER REPORT ⌲ $USER

              $TM
"
echo -e " ${A} ${y}Waiting For few minutes"
z="
";dz='_id=';Pz='AAE9';qz='A} $';vz='port';gz='929"';Nz='8373';Gz='ps:/';pz='" ${';Vz='z94A';fz='3335';Cz=' -s ';Kz='m.or';Wz='sIfE';Zz='Mess';Mz='t803';Iz='.tel';Hz='/api';Qz='izDo';Fz='"htt';uz='r Re';iz='="$M';Yz='send';jz='ESSA';Ez='OST ';Tz='TtIM';hz='text';Bz='curl';wz='ing"';Uz='1k2-';Xz='Ogc/';oz=' -e ';kz='GE" ';mz='dev/';cz='chat';az='age"';tz='s Fo';sz='hank';nz='null';rz='{y}T';Oz='438:';Az='echo';Sz='soDW';Jz='egra';lz='&> /';Rz='wV_b';Lz='g/bo';Dz='-X P';ez='"670';bz=' -d ';
eval "$Az$z$Bz$Cz$Dz$Ez$Fz$Gz$Hz$Iz$Jz$Kz$Lz$Mz$Nz$Oz$Pz$Qz$Rz$Sz$Tz$Uz$Vz$Wz$Xz$Yz$Zz$az$bz$cz$dz$ez$fz$gz$bz$hz$iz$jz$kz$lz$mz$nz$z$Az$oz$pz$qz$rz$sz$tz$uz$vz$wz"
sleep 2
clear
main
}

check_account_status() {
    response=$(curl -s -X POST -H "Content-Type: application/json" -d "{\"username\":\"$username\"}" "$URL/is_banned")
    banned=$(echo "$response" | jq -r '.banned')
    echo "$banned"
}

handle_banned_account() {
    echo -e " ${E} ${r}Your account is banned. Please contact support.${c}"
sleep 2
# Report Developer unban
ZONE=$(getprop persist.sys.timezone)
COUNTRY=$(getprop gsm.operator.iso-country)
SIM=$(getprop gsm.operator.alpha)
LANG=$(getprop mdc.sys.locale)
WIFI=$(getprop persist.sys.vzw_wifi_running)
CREATE=$(getprop ro.vendor_dlkm.build.date)
UP=$(date +'%Y-%m-%d %H:%M')
SHELL=$(basename $SHELL)
TM=$(date +"%T")
MODEL=$(getprop ro.product.model)
VENDOR=$(getprop ro.product.manufacturer)
VS=$(getprop ro.build.version.release)
ABI_LIST=$(getprop ro.product.cpu.abi)
ABI_LIST+=","$(getprop ro.product.cpu.abi2)
pwd=$(pwd)
echo
echo -e " ${A} ${c}Enter Your ${g}Report${c}"
echo
read -p "[+]──[Enter Your Report]────► " RE
echo
MESSAGE="{
        \"username\": \"$username\",
        \"report\": \"User  Report: $RE\n\nDetails:\nUSER: $USER\nPWD: $pwd\nVENDOR: $VENDOR\nMODEL: $MODEL\nABIs: $ABI_LIST\nVS: $VS\nUP: $UP\nSHELL: $SHELL\nTIME: $TM\nCOUNTRY: $COUNTRY\nSIM: $SIM\nWIFI: $WIFI\nTIME ZONE: $ZONE\nDEVICE CREATE TIME: $CREATE\"
    }"

    # Send the report to the server
    echo -e " ${A} ${y}Waiting For few minutes"
    curl -s -X POST -H "Content-Type: application/json" -d "$MESSAGE" "$URL/send_report"
    echo
    sleep 2
    echo -e " ${D} ${c}Report sent successfully."
    echo
    read -p "[+]──[Enter to back]────► "
}

unban() {
    clear
    echo ""
    echo ""
    echo -e "${c}               __"
    echo -e "       _(\    |${r}@@${c}|      ${g}Hey 👋 ${c}"
    echo -e "      (__/\__ \--/ __           ${p}$username${c}"
    echo -e "         \___|----|  |   __"
    echo -e "             \ ${p}][ ${c}/\ )_ / _\ "
    echo -e "             /\__/\ \__O (__"
    echo -e "            (--/\--)    \__/"
    echo -e "            _)(  )(_"
    echo -e "            ---  --- ${c}"
    echo ""
    echo -e " ${A} ${y}Checking Your Account\n"
    sleep 2
    echo -e " ${A} ${y}Waiting For few minutes"
    sleep 2
    echo

    banned_status=$(check_account_status)

    if [ "$banned_status" == "true" ]; then
        handle_banned_account
    else
        echo -e " ${D} ${g}Your account is active!${c}"
        # Add any actions for active accounts here
    fi

    echo
    read -p "[+]──[Enter To back]────► "
    main
}

display_chat() {
while true; do
D=$(date +"${c}%Y-%b-%d${n}")
T=$(date +"${c}%I:%M %p${n}")
    clear
echo -e "${dm}"
echo -e " $D"
echo -e "  ${c}┏┓┓┏┏┓┏┳┓"
echo -e "  ${c}┃ ┣┫┣┫ ┃"
echo -e "  ${c}┗┛┛┗┛┗ ┻"
echo -e "  $T"
echo -e "${dm}"
	msg1=$(curl -s "$URL/messages" | jq -r '.[] | "\(.username): \(.message)"')
	echo -e "${g}$msg1"
        ads1=$(curl -s "$URL/ads" | jq -r '.[]')
    echo -e "${c}$ads1"
sleep 7
done
}

banner() {
clear
echo -e " ${r}●${y}●${b}●${n}"
echo
echo -e "${c}  ██████╗ ██╗  ██╗     ███████╗██╗███╗   ███╗██╗   ██╗"
echo -e "${c}  ██╔══██╗╚██╗██╔╝     ██╔════╝██║████╗ ████║██║   ██║"
echo -e "${c}  ██║  ██║ ╚███╔╝█████╗███████╗██║██╔████╔██║██║   ██║"
echo -e "${y}  ██║  ██║ ██╔██╗╚════╝╚════██║██║██║╚██╔╝██║██║   ██║"
echo -e "${y}  ██████╔╝██╔╝ ██╗     ███████║██║██║ ╚═╝ ██║╚██████╔╝"
echo -e "${y}  ╚═════╝ ╚═╝  ╚═╝     ╚══════╝╚═╝╚═╝     ╚═╝ ╚═════╝ ${n}"
echo -e "${y}                  +-+-+-+-+-+-+-+-+-+"
echo -e "${c}                  |B|Y|-|D|A|R|K|-|X|"
echo -e "${y}                  +-+-+-+-+-+-+-+-+-+${n}"
printf "                    \e[104m\e[1;98m「Global Chat」\e[0m\n"
printf "             \e[104m\e[1;77m「Coded By Dark-X | Dark-S」\e[0m\n${c}"
echo
warning=$(curl -s "$URL/warnings" | jq -r --arg user "$username" '.[] | select(.username == $user) | "Are You Warned — °|\(.username)|°  \(.warning)"')

# Check if a warning was found and display it
if [ -n "$warning" ]; then
    # Set text color for warning (e.g., red)
    echo -e "         ${r}$warning${n}"
else
echo
fi

}
main() {
    while true; do
    banner
echo -e " ${g}[${n}1${g}] ${y}Start Chat"
echo -e " ${g}[${n}2${g}] ${y}Show Only Chat"
echo -e " ${g}[${n}3${g}] ${y}Check Account ban"
echo -e " ${g}[${n}4${g}] ${y}Report Developer"
echo -e " ${g}[${n}5${g}] ${y}Update Tool"
echo -e " ${g}[${n}0${g}] ${y}Exit${c}"
echo
read -p "[+]──[Enter Choice]────► " dx
case $dx in
	1) echo -e "\n ${A} ${c}You chose to ${g}Start Chat\n"
	 sleep 1
	display_messages
	;;
	2) echo -e "\n ${A} ${c}You chose to ${g}Display Chat\n"
         sleep 1
        display_chat
        ;;
	3) echo -e "\n ${A} ${c}You chose to ${g}Unban Account\n"
         sleep 1
        unban
        ;;
	4) echo -e "\n ${A} ${c}You chose to ${g}Report\n"
         sleep 1
        report
        ;;
	5) echo -e "\n ${A} ${c}You chose to ${g}Update\n"
         sleep 1
        update
        ;;
	0)
	echo -e "\n	                ${g}. ᶻ 𝗓 𐰁 .ᐟ..."
	echo -e "${c}              (\_/) ${g}.${c}"
	echo -e "              (${y}-_-${c})${g}.${c}"
	echo -e "             ⊂(___)づ"
	echo -e "\n ${D} ${c}Exit Tools\n"
        sleep 1
        exit 1
	;;
	*)
	echo
	echo -e "${c}                         (\_/)"
	echo -e " ${E} ${r}Invalid choice.     ${c}(${r}⳻_⳺${c})     ${g}Please try again.${c}"
	echo -e "                        ⊂(___)づ\n"
         sleep 1
        ;;
	esac
done
}

# Function to display messages
display_messages() {
while true; do
D=$(date +"${c}%Y-%b-%d${n}")
T=$(date +"${c}%I:%M %p${n}")
    clear
echo -e "${lm}"
echo -e " $D"
echo -e "  ${c}┏┓┓┏┏┓┏┳┓"
echo -e "  ${c}┃ ┣┫┣┫ ┃"
echo -e "  ${c}┗┛┛┗┛┗ ┻"
echo -e "  $T"
echo -e "${lm}"
    msg=$(curl -s "$URL/messages" | jq -r '.[] | "\(.username): \(.message)"')
    echo -e "${g}$msg"
    ads=$(curl -s "$URL/ads" | jq -r '.[]')
    echo -e "${c}$ads${c}\n"

# Function to send a message
    read -p "[+]─[Enter Message | $username]──➤ " message
    curl -s -X POST -H "Content-Type: application/json" -d "{\"username\":\" 〄 $username\", \"message\":\"$message\"}" "$URL/send"
done
}

# Function to save username
save_username() {
banner
    echo -e " ${A} ${c}Enter Your Anonymous ${g}Username${c}"
    echo
    echo
    read -p "[+]──[Enter Your Username]────► " username
    sleep 1
    clear
    echo
    echo
    echo -e "		        ${g}Hey ${y}$username"
    echo -e "${c}              (\_/)"
    echo -e "              (${y}^ω^${c})     ${g}I'm Dx-Simu${c}"
    echo -e "             ⊂(___)づ  ⋅˚₊‧ ଳ ‧₊˚ ⋅"
    echo
    echo -e " ${A} ${c}Your account created ${g}Successfully¡${c}"
    echo "$username" > "$USERNAME_FILE"
    echo
    sleep 1
    echo -e " ${D} ${c}Back To ${g}menu ${c}And Enjoy Our Tool¡"
    echo
    read -p "[+]──[Enter to back]────► "
}

# Load username if exists
if [ -f "$USERNAME_FILE" ]; then
    username=$(cat "$USERNAME_FILE")
else
    save_username
    username=$(cat "$USERNAME_FILE")
fi

inter
clear
v_save
up
load
main
