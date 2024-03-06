#!/data/data/com.termux/files/usr/bin/bash
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

git clone --depth 1 https://github.com/W8SOJIB/W8RootWifiHK

chmod +x W8RootWifiHK/oneshot.py

printf "###############################################\n#  All done! Now you can run OneShot with\n#   sudo python neshot.py -i wlan0 -K\n#\n#  Join W8Team,\n#\n###############################################\n"
