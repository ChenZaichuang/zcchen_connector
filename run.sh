nginx
cd /root
curl -O "https://raw.githubusercontent.com/ChenZaichuang/shell_vpn/main/install.sh"
chmod +x install.sh
if [ -z ${VPN_PASSWORD} ]; then
  . /root/config.sh
fi

echo NODE_NAME:${NODE_NAME}
echo SINGLE_PORT:${SINGLE_PORT}
echo SSH_PORT:${SSH_PORT}
echo GROUP_PORT:${GROUP_PORT}
echo NODE_GROUP:${NODE_GROUP}

bash /root/install.sh
/usr/sbin/sshd -D
