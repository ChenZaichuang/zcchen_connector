nginx
cd /root
curl -O "https://raw.githubusercontent.com/ChenZaichuang/shell_vpn/main/install.sh"
chmod +x install.sh
. /root/config.sh
bash /root/install.sh
/usr/sbin/sshd -D
