#!/data/data/com.termux/files/usr/bin/bash

# Give storage permission (Termux)
termux-setup-storage

# Install tsu for root access
pkg install -y tsu

# Switch to root (if not already)
tsu

# Continue with the rest of the setup
pkg install -y root-repo 
pkg install -y git tsu python wpa-supplicant pixiewps iw

chmod +x oneshot.py

# Auto-install main script (if not already run from curl)
curl -sSf https://raw.githubusercontent.com/W8SOJIB/W8RootWifiHK/main/installer.sh | bash

# Copy wifihack.sh to Termux home directory
cp wifihack.sh /data/data/com.termux/files/home/

printf "###############################################\n#  All done! Now you can run OneShot with\n#   sudo python neshot.py -i wlan0 -K\n#\n#  Join W8Team,\n#\n###############################################\n"
