#!/bin/bash
MYIP=$(wget -qO- ipv4.icanhazip.com)
MYIP2="s/xxxxxxxxx/$MYIP/g";
ANU=$(ip -o $ANU -4 route show to default | awk '{print $5}');
wget -q -O ipreg http://ip.untadot.asia:81/ipreg.txt
if ! grep -w -q $MYIP ipreg; then
echo -e "\e[0;31m # NAK DAFTAR IP ? CONTACT SAYA @UntaDotMY DI TELEGRAM # \e[0;0m"
rm -f ipreg
  exit
  fi
rm -f ipreg
if [ "${EUID}" -ne 0 ]; then
  echo "You need to run this script as root"
  exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
  echo "OpenVZ is not supported"
  exit 1
fi

if [[ ! -e /root/Version ]]; then
echo "1" > /root/Version
fi
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==1 {print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==2 {print $4}' | cut -d: -f2)"
uovpn="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==1 {print $4}' | cut -d: -f2)"
uovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==2 {print $4}' | cut -d: -f2)"

Version=$(wget -qO- --no-check-certificate --no-cache --no-cookies https://raw.githubusercontent.com/UntaDotMy/premm/main/Version)
CVersion=$(cat /root/Version)

if [[ $CVersion -ge $Version ]]; then
clear
echo " No new update "
echo " Your Script Version : $CVersion "
echo " Current Script Version : $Version "
rm -f update.sh
else
clear
echo " Got Update ! "
sleep 2
echo " Your Script Version : $CVersion "
sleep 2
echo " Current Script Version : $Version "
sleep 2
echo -ne '>>>                       [20%]\r'
sleep 1
cd /usr/bin
rm -f menu
sleep 1
wget -q -O menu "https://raw.githubusercontent.com/UntaDotMy/premm/main/menu.sh"
wget -q -O m-sshvpn "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-sshvpn.sh"
wget -q -O m-wg "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-wg.sh"
wget -q -O m-ssr "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-ssr.sh"
wget -q -O m-s "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-s.sh"
wget -q -O m-vmess "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-vmess.sh"
wget -q -O m-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-vless.sh"
wget -q -O m-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-tr.sh"
wget -q -O m-sys "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-sys.sh"
wget -q -O usernew "https://raw.githubusercontent.com/UntaDotMy/premm/main/usernew.sh"
wget -q -O trial "https://raw.githubusercontent.com/UntaDotMy/premm/main/trial.sh"
wget -q -O hapus "https://raw.githubusercontent.com/UntaDotMy/premm/main/hapus.sh"
wget -q -O member "https://raw.githubusercontent.com/UntaDotMy/premm/main/member.sh"
wget -q -O delete "https://raw.githubusercontent.com/UntaDotMy/premm/main/delete.sh"
wget -q -O cek "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek.sh"
wget -q -O restart "https://raw.githubusercontent.com/UntaDotMy/premm/main/restart.sh"
wget -q -O renew "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew.sh"
wget -q -O autokill "https://raw.githubusercontent.com/UntaDotMy/premm/main/autokill.sh"
wget -q -O ceklim "https://raw.githubusercontent.com/UntaDotMy/premm/main/ceklim.sh"
wget -q -O tendang "https://raw.githubusercontent.com/UntaDotMy/premm/main/tendang.sh"
wget -q -O change-port "https://raw.githubusercontent.com/UntaDotMy/premm/main/change.sh"
wget -q -O port-ovpn "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-ovpn.sh"
wget -q -O port-dropbear "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-dropbear.sh"
wget -q -O port-ssl "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-ssl.sh"
wget -q -O port-wg "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-wg.sh"
wget -q -O port-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-tr.sh"
wget -q -O port-ohp "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-ohp.sh"
wget -q -O port-squid "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-squid.sh"
wget -q -O port-ws "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-ws.sh"
wget -q -O port-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-vless.sh"
wget -q -O port-xs "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-xs.sh"
wget -q -O port-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-xless.sh"
wget -q -O port-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/port-xtls.sh"
wget -q -O wbmn "https://raw.githubusercontent.com/UntaDotMy/premm/main/webmin.sh"
wget -q -O xp "https://raw.githubusercontent.com/UntaDotMy/premm/main/xp.sh"
wget -q -O m-xmess "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-xmess.sh"
wget -q -O m-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-xless.sh"
wget -q -O m-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/m-xtls.sh"
wget -q -O user-password "https://raw.githubusercontent.com/UntaDotMy/premm/main/user-password"
wget -q -O user-unlock "https://raw.githubusercontent.com/UntaDotMy/premm/main/user-unlock"
wget -q -O add-ws "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-ws.sh"
wget -q -O add-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-vless.sh"
wget -q -O add-xs "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-xs.sh"
wget -q -O add-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-xless.sh"
wget -q -O add-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-xtls.sh"
wget -q -O add-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-tr.sh"
wget -q -O del-ws "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-ws.sh"
wget -q -O del-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-vless.sh"
wget -q -O del-xs "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-xs.sh"
wget -q -O del-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-xless.sh"
wget -q -O del-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-xtls.sh"
wget -q -O del-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-tr.sh"
wget -q -O cek-ws "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-ws.sh"
wget -q -O cek-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-vless.sh"
wget -q -O cek-xs "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-xs.sh"
wget -q -O cek-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-xless.sh"
wget -q -O cek-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-xtls.sh"
wget -q -O cek-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-tr.sh"
wget -q -O renew-ws "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-ws.sh"
wget -q -O renew-vless "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-vless.sh"
wget -q -O renew-xs "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-xs.sh"
wget -q -O renew-xless "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-xless.sh"
wget -q -O renew-xtls "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-xtls.sh"
wget -q -O renew-tr "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-tr.sh"
wget -q -O certv2ray "https://raw.githubusercontent.com/UntaDotMy/premm/main/cert.sh"
wget -q -O add-ssr "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-ssr.sh"
wget -q -O del-ssr "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-ssr.sh"
wget -q -O renew-ssr "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-ssr.sh"
wget -q -O add-ss "https://raw.githubusercontent.com/UntaDotMy/premm/main/add-ss.sh"
wget -q -O del-ss "https://raw.githubusercontent.com/UntaDotMy/premm/main/del-ss.sh"
wget -q -O cek-ss "https://raw.githubusercontent.com/UntaDotMy/premm/main/cek-ss.sh"
wget -q -O renew-ss "https://raw.githubusercontent.com/UntaDotMy/premm/main/renew-ss.sh"
chmod +x add-ss
chmod +x del-ss
chmod +x cek-ss
chmod +x renew-ss
chmod +x add-ssr
chmod +x del-ssr
chmod +x renew-ssr
chmod +x menu
chmod +x m-sshvpn
chmod +x m-wg
chmod +x m-ssr
chmod +x m-s
chmod +x m-vmess
chmod +x m-vless
chmod +x m-xmess
chmod +x m-xless
chmod +x m-xtls
chmod +x m-tr
chmod +x m-sys
chmod +x usernew
chmod +x trial
chmod +x hapus
chmod +x member
chmod +x delete
chmod +x cek
chmod +x restart
chmod +x autokill
chmod +x tendang
chmod +x ceklim
chmod +x renew
chmod +x change-port
chmod +x port-ovpn
chmod +x port-ssl
chmod +x port-wg
chmod +x port-tr
chmod +x port-squid
chmod +x port-ws
chmod +x port-vless
chmod +x port-xs
chmod +x port-xless
chmod +x port-xtls
chmod +x port-dropbear
chmod +x wbmn
chmod +x xp
chmod +x user-password
chmod +x user-unlock
chmod +x add-ws
chmod +x add-vless
chmod +x add-xs
chmod +x add-xless
chmod +x add-xtls
chmod +x add-tr
chmod +x del-ws
chmod +x del-vless
chmod +x del-xs
chmod +x del-xless
chmod +x del-xtls
chmod +x del-tr
chmod +x cek-ws
chmod +x cek-vless
chmod +x cek-xs
chmod +x cek-xless
chmod +x cek-xtls
chmod +x cek-tr
chmod +x renew-ws
chmod +x renew-vless
chmod +x renew-xs
chmod +x renew-xless
chmod +x renew-xtls
chmod +x renew-tr
chmod +x certv2ray
chmod +x port-ohp
cd
sleep 2
echo -ne '>>>>>>>                   [40%]\r'

#remove all openvpn
apt-get remove --auto-remove openvpn -y
apt-get purge --auto-remove openvpn -y

rm -r /etc/openvpn

#remove firewall
apt-get remove --auto-remove firewalld -y
apt-get purge --auto-remove firewalld -y
rm -r /etc/firewalld/zones


function ip_address(){
  local IP="$( ip addr | egrep -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' | egrep -v "^192\.168|^172\.1[6-9]\.|^172\.2[0-9]\.|^172\.3[0-2]\.|^10\.|^127\.|^255\.|^0\." | head -n 1 )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipv4.icanhazip.com )"
  [ -z "${IP}" ] && IP="$( wget -qO- -t1 -T2 ipinfo.io/ip )"
  [ ! -z "${IP}" ] && echo "${IP}" || echo
} 
IPADDR="$(ip_address)"
MYIP=$(wget -qO- ipv4.icanhazip.com);
OpenVPN_Port1='110'
OpenVPN_Port2='1194'
OpenVPN_Port3='2200'
OpenVPN_Port4='2500'
Proxy_Port1='3128'

# Installing OpenVPN by pulling its repository inside sources.list file 
 #rm -rf /etc/apt/sources.list.d/openvpn*
 echo "deb http://build.openvpn.net/debian/openvpn/stable $(lsb_release -sc) main" >/etc/apt/sources.list.d/openvpn.list && apt-key del E158C569 && wget -O - https://swupdate.openvpn.net/repos/repo-public.gpg | apt-key add -
 wget -qO security-openvpn-net.asc "https://keys.openpgp.org/vks/v1/by-fingerprint/F554A3687412CFFEBDEFE0A312F5F7B42F2B01E7" && gpg --import security-openvpn-net.asc
 apt-get update -y
 apt-get install openvpn -y
 
 # Checking if openvpn folder is accidentally deleted or purged
 if [[ ! -e /etc/openvpn ]]; then
  mkdir -p /etc/openvpn
 fi

 # Removing all existing openvpn server files
 rm -rf /etc/openvpn/*

# Creating server.conf, ca.crt, server.crt and server.key
cat <<'myOpenVPNconf1' > /etc/openvpn/server-tcp-110.conf
port MyOvpnPort1
dev tun
proto tcp
ca /etc/openvpn/ca.crt
cert /etc/openvpn/unta.crt
key /etc/openvpn/unta.key
duplicate-cn
dh none
persist-tun
persist-key
persist-remote-ip
cipher none
ncp-disable
auth none
comp-lzo
tun-mtu 1500
reneg-sec 0
plugin /etc/openvpn/openvpn-auth-pam.so /etc/pam.d/login
verify-client-cert none
username-as-common-name
max-clients 4080
topology subnet
server 172.28.0.0 255.255.240.0
push "redirect-gateway def1"
keepalive 5 30
status /etc/openvpn/tcp_stats.log
log /etc/openvpn/tcp.log
verb 2
script-security 2
socket-flags TCP_NODELAY
push "socket-flags TCP_NODELAY"
push "dhcp-option DNS 1.0.0.1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 8.8.4.4"
push "dhcp-option DNS 8.8.8.8"
myOpenVPNconf1

cat <<'myOpenVPNconf2' > /etc/openvpn/server-tcp-1194.conf
port MyOvpnPort2
dev tun
proto tcp
ca /etc/openvpn/ca.crt
cert /etc/openvpn/unta.crt
key /etc/openvpn/unta.key
duplicate-cn
dh none
persist-tun
persist-key
persist-remote-ip
cipher none
ncp-disable
auth none
comp-lzo
tun-mtu 1500
reneg-sec 0
plugin /etc/openvpn/openvpn-auth-pam.so /etc/pam.d/login
verify-client-cert none
username-as-common-name
max-clients 4080
topology subnet
server 172.29.0.0 255.255.240.0
push "redirect-gateway def1"
keepalive 5 30
status /etc/openvpn/tcp_stats2.log
log /etc/openvpn/tcp.log
verb 2
script-security 2
socket-flags TCP_NODELAY
push "socket-flags TCP_NODELAY"
push "dhcp-option DNS 1.0.0.1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 8.8.4.4"
push "dhcp-option DNS 8.8.8.8"
myOpenVPNconf2

cat <<'myOpenVPNconf3' > /etc/openvpn/server-udp-2200.conf
port MyOvpnPort3
dev tun
proto udp
ca /etc/openvpn/ca.crt
cert /etc/openvpn/unta.crt
key /etc/openvpn/unta.key
duplicate-cn
dh none
persist-tun
persist-key
persist-remote-ip
cipher none
ncp-disable
auth none
comp-lzo
tun-mtu 1500
reneg-sec 0
plugin /etc/openvpn/openvpn-auth-pam.so /etc/pam.d/login
verify-client-cert none
username-as-common-name
max-clients 4080
topology subnet
server 172.28.16.0 255.255.240.0
push "redirect-gateway def1"
keepalive 5 30
status /etc/openvpn/udp_stats.log
log /etc/openvpn/tcp.log
verb 2
script-security 2
socket-flags TCP_NODELAY
push "socket-flags TCP_NODELAY"
push "dhcp-option DNS 1.0.0.1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 8.8.4.4"
push "dhcp-option DNS 8.8.8.8"
myOpenVPNconf3

cat <<'myOpenVPNconf4' > /etc/openvpn/server-udp-2500.conf
port MyOvpnPort4
dev tun
proto udp
ca /etc/openvpn/ca.crt
cert /etc/openvpn/unta.crt
key /etc/openvpn/unta.key
duplicate-cn
dh none
persist-tun
persist-key
persist-remote-ip
cipher none
ncp-disable
auth none
comp-lzo
tun-mtu 1500
reneg-sec 0
plugin /etc/openvpn/openvpn-auth-pam.so /etc/pam.d/login
verify-client-cert none
username-as-common-name
max-clients 4080
topology subnet
server 172.29.16.0 255.255.240.0
push "redirect-gateway def1"
keepalive 5 30
status /etc/openvpn/udp_stats2.log
log /etc/openvpn/tcp.log
verb 2
script-security 2
socket-flags TCP_NODELAY
push "socket-flags TCP_NODELAY"
push "dhcp-option DNS 1.0.0.1"
push "dhcp-option DNS 1.1.1.1"
push "dhcp-option DNS 8.8.4.4"
push "dhcp-option DNS 8.8.8.8"
myOpenVPNconf4

 cat <<'EOF7'> /etc/openvpn/ca.crt
-----BEGIN CERTIFICATE-----
MIID0jCCAzugAwIBAgIJALnVZsGmA5VVMA0GCSqGSIb3DQEBCwUAMIGeMQswCQYD
VQQGEwJQSDEOMAwGA1UECAwFQklLT0wxDTALBgNVBAcMBE5hZ2ExFDASBgNVBAoM
C1NjcmlwdEJhcnRzMSQwIgYDVQQLDBtodHRwczovL2dpdGh1Yi5jb20vQmFydHMt
MjMxETAPBgNVBAMMCElBTUJBUlRYMSEwHwYJKoZIhvcNAQkBFhJpYW1iYXJ0eEBn
bWFpbC5jb20wHhcNMjAwODE5MTUzNDM3WhcNNDgwMTA0MTUzNDM3WjCBnjELMAkG
A1UEBhMCUEgxDjAMBgNVBAgMBUJJS09MMQ0wCwYDVQQHDAROYWdhMRQwEgYDVQQK
DAtTY3JpcHRCYXJ0czEkMCIGA1UECwwbaHR0cHM6Ly9naXRodWIuY29tL0JhcnRz
LTIzMREwDwYDVQQDDAhJQU1CQVJUWDEhMB8GCSqGSIb3DQEJARYSaWFtYmFydHhA
Z21haWwuY29tMIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDbIUbQYcSduz0B
HdaLDGUxByjbdS7R8RQBUmsGbdhZFDSAsqlesgDPfkWO3lUHlUxVf5z3S/aJIvpk
dUeG80p0bHgqJBbkaJWdZzlqS47WPr5N9mkzx7ZxOel5zLTsXGL316SbqKuSXP9K
8FysbxNUOqQw+0PcRR9qRGWFU/d1jQIDAQABo4IBFDCCARAwHQYDVR0OBBYEFKfS
tTje+kKpL1hc2Dt2RaV1yeklMIHTBgNVHSMEgcswgciAFKfStTje+kKpL1hc2Dt2
RaV1yekloYGkpIGhMIGeMQswCQYDVQQGEwJQSDEOMAwGA1UECAwFQklLT0wxDTAL
BgNVBAcMBE5hZ2ExFDASBgNVBAoMC1NjcmlwdEJhcnRzMSQwIgYDVQQLDBtodHRw
czovL2dpdGh1Yi5jb20vQmFydHMtMjMxETAPBgNVBAMMCElBTUJBUlRYMSEwHwYJ
KoZIhvcNAQkBFhJpYW1iYXJ0eEBnbWFpbC5jb22CCQC51WbBpgOVVTAMBgNVHRME
BTADAQH/MAsGA1UdDwQEAwIBBjANBgkqhkiG9w0BAQsFAAOBgQBwdEQ1WxL+CFnu
TXpxBDxCAdVt0wx/BajZoUTFQNx+ayLvbMZG/u39blTYlZZ/Q2VRFw6wa+VRviDk
qLaAs4jTq/IhomRM5eEZRvcCx7sgs5zu3ggD6HFZqrlrTS7XKxBgASkuJtT/DiT8
u37RrsJDD4VPMq8d+Jc0HqPwdatkKg==
-----END CERTIFICATE-----
EOF7
 cat <<'EOF9'> /etc/openvpn/unta.crt
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            77:4a:a5:72:b1:bf:cb:e3:9e:77:75:7d:02:96:eb:e3
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: C=MY, ST=BIKOL, L=Naga, O=ScriptUnta, OU=https://github.com/UntaDotMy, CN=UNTA/emailAddress=UNTA@gmail.com
        Validity
            Not Before: Aug 19 15:34:54 2020 GMT
            Not After : Jan  4 15:34:54 2048 GMT
        Subject: C=MY, ST=BIKOL, L=Naga, O=ScriptUnta, OU=https://github.com/UntaDotMy, CN=server/emailAddress=UNTA@gmail.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (1024 bit)
                Modulus:
                    00:a7:b4:a7:d4:25:46:3d:0c:f0:55:9b:32:cb:8b:
                    92:e2:d6:d4:d8:09:c2:60:14:30:1b:27:95:76:87:
                    4e:9e:3e:b1:0c:c9:98:02:77:a1:ec:e8:c3:92:6d:
                    b4:e9:86:19:76:35:71:7d:2b:91:70:c0:9b:f3:b7:
                    30:1a:53:12:e0:d8:5e:7b:0c:65:f0:60:36:22:d3:
                    9e:49:ff:2a:74:04:33:ba:f7:a2:98:02:f4:1f:2c:
                    32:d3:c1:be:af:f1:8a:8b:72:fb:7e:8f:4d:73:30:
                    d3:3b:d3:79:77:14:96:37:e4:45:82:6f:a3:3a:05:
                    a1:db:78:13:d5:f0:31:51:89
                Exponent: 65537 (0x10001)
        X509v3 extensions:
            X509v3 Basic Constraints: 
                CA:FALSE
            X509v3 Subject Key Identifier: 
                9C:3B:FA:35:9F:A8:21:33:97:83:2F:E4:82:85:39:7E:B6:36:8B:72
            X509v3 Authority Key Identifier: 
                keyid:A7:D2:B5:38:DE:FA:42:A9:2F:58:5C:D8:3B:76:45:A5:75:C9:E9:25
                DirName:/C=MY/ST=BIKOL/L=Naga/O=ScriptUnta/OU=https://github.com/UntaDotMy/CN=UNTA/emailAddress=UNTA@gmail.com
                serial:B9:D5:66:C1:A6:03:95:55
            X509v3 Extended Key Usage: 
                TLS Web Server Authentication
            X509v3 Key Usage: 
                Digital Signature, Key EnciMYerment
            X509v3 Subject Alternative Name: 
                DNS:server
    Signature Algorithm: sha256WithRSAEncryption
         12:ba:a0:bc:95:0f:29:95:84:48:7c:01:ee:04:e1:8c:57:1b:
         08:8d:08:0e:cd:14:f0:5a:50:59:13:f9:04:64:d0:37:96:b0:
         1d:b7:7f:62:2f:03:78:12:1a:ec:93:bd:9c:0b:15:b8:71:c7:
         2d:75:50:56:3f:13:94:22:0a:e3:de:e3:a1:1e:33:49:e4:76:
         d6:91:ad:e7:10:72:80:c8:38:67:70:90:cb:b7:21:49:32:a3:
         fc:95:ef:d7:0d:97:87:cc:40:72:d5:42:1f:d9:9c:a7:ba:8b:
         5e:f9:69:4f:3d:c6:da:6c:e1:8d:96:cc:ad:66:50:f3:5c:db:
         74:fd
-----BEGIN CERTIFICATE-----
MIID/DCCA2WgAwIBAgIQd0qlcrG/y+Oed3V9Apbr4zANBgkqhkiG9w0BAQsFADCB
njELMAkGA1UEBhMCUEgxDjAMBgNVBAgMBUJJS09MMQ0wCwYDVQQHDAROYWdhMRQw
EgYDVQQKDAtTY3JpcHRCYXJ0czEkMCIGA1UECwwbaHR0cHM6Ly9naXRodWIuY29t
L0JhcnRzLTIzMREwDwYDVQQDDAhJQU1CQVJUWDEhMB8GCSqGSIb3DQEJARYSaWFt
YmFydHhAZ21haWwuY29tMB4XDTIwMDgxOTE1MzQ1NFoXDTQ4MDEwNDE1MzQ1NFow
gZwxCzAJBgNVBAYTAlBIMQ4wDAYDVQQIDAVCSUtPTDENMAsGA1UEBwwETmFnYTEU
MBIGA1UECgwLU2NyaXB0QmFydHMxJDAiBgNVBAsMG2h0dHBzOi8vZ2l0aHViLmNv
bS9CYXJ0cy0yMzEPMA0GA1UEAwwGc2VydmVyMSEwHwYJKoZIhvcNAQkBFhJpYW1i
YXJ0eEBnbWFpbC5jb20wgZ8wDQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAKe0p9Ql
Rj0M8FWbMsuLkuLW1NgJwmAUMBsnlXaHTp4+sQzJmAJ3oezow5JttOmGGXY1cX0r
kXDAm/O3MBpTEuDYXnsMZfBgNiLTnkn/KnQEM7r3opgC9B8sMtPBvq/xioty+36P
TXMw0zvTeXcUljfkRYJvozoFodt4E9XwMVGJAgMBAAGjggE5MIIBNTAJBgNVHRME
AjAAMB0GA1UdDgQWBBScO/o1n6ghM5eDL+SChTl+tjaLcjCB0wYDVR0jBIHLMIHI
gBSn0rU43vpCqS9YXNg7dkWldcnpJaGBpKSBoTCBnjELMAkGA1UEBhMCUEgxDjAM
BgNVBAgMBUJJS09MMQ0wCwYDVQQHDAROYWdhMRQwEgYDVQQKDAtTY3JpcHRCYXJ0
czEkMCIGA1UECwwbaHR0cHM6Ly9naXRodWIuY29tL0JhcnRzLTIzMREwDwYDVQQD
DAhJQU1CQVJUWDEhMB8GCSqGSIb3DQEJARYSaWFtYmFydHhAZ21haWwuY29tggkA
udVmwaYDlVUwEwYDVR0lBAwwCgYIKwYBBQUHAwEwCwYDVR0PBAQDAgWgMBEGA1Ud
EQQKMAiCBnNlcnZlcjANBgkqhkiG9w0BAQsFAAOBgQASuqC8lQ8plYRIfAHuBOGM
VxsIjQgOzRTwWlBZE/kEZNA3lrAdt39iLwN4Ehrsk72cCxW4ccctdVBWPxOUIgrj
3uOhHjNJ5HbWka3nEHKAyDhncJDLtyFJMqP8le/XDZeHzEBy1UIf2Zynuote+WlP
PcbabOGNlsytZlDzXNt0/Q==
-----END CERTIFICATE-----
EOF9
 cat <<'EOF10'> /etc/openvpn/unta.key
-----BEGIN PRIVATE KEY-----
MIICdwIBADANBgkqhkiG9w0BAQEFAASCAmEwggJdAgEAAoGBAKe0p9QlRj0M8FWb
MsuLkuLW1NgJwmAUMBsnlXaHTp4+sQzJmAJ3oezow5JttOmGGXY1cX0rkXDAm/O3
MBpTEuDYXnsMZfBgNiLTnkn/KnQEM7r3opgC9B8sMtPBvq/xioty+36PTXMw0zvT
eXcUljfkRYJvozoFodt4E9XwMVGJAgMBAAECgYBiMSBi0kBB1qWROgGPs/UY4/hT
VcN9RdS00YRtleOuO76mYhKivzEL6W04+wsGAAJAeCIuy6eogN3O4N9FSoauNNq+
Om95WGLY+OWE9H61Y+UioafqMRN6CFiSvy1a0inOclunBljcf68uZIkeKgTPoc0v
osNfuCas7LfO48XPkQJBANFoKHsAqdYvbF+/RZqVfd5sqXMUPNCww9YeQsGz3mBp
yp+Tx7T+wGUKGKZzD9fqwN2+z0kP1QYtkCSF4pRL4ZMCQQDNBTFc0AWBietYonsN
ewllx+D72k5Tt2TdSBOhYsoZFu28ybkiagGLDBsQsAdpsjSc7HiaBsuiyLjS16kK
eOHzAkEAmnLZUIeXvFrz8tavbqmN0YyRmkg15rJJbtaY5CdXAANnKDWmGU+/9YXx
0mqRJ+6EW8jNOBUOSGU4qEd7a2dgMwJABUyjEAEYg1arTKk2gQyzG3xlJl1oNOXC
p62bREqnaqqbDowwSuFulMeFU5MZPfQrQ/sgyupuDREfJeQJLIofXQJBAKpVRR0G
JFriv/ukvYSEiw4bgneXbKtTjvXVE5B518RSPaaLEdz7agCJZ3yGWt8Hw3L1GEHE
1Z9t3f/rftuj+4U=
-----END PRIVATE KEY-----
EOF10

sed -i "s|MyOvpnPort1|$OpenVPN_Port1|g" /etc/openvpn/server-tcp-110.conf
sed -i "s|MyOvpnPort2|$OpenVPN_Port2|g" /etc/openvpn/server-tcp-1194.conf
sed -i "s|MyOvpnPort3|$OpenVPN_Port3|g" /etc/openvpn/server-udp-2200.conf
sed -i "s|MyOvpnPort4|$OpenVPN_Port4|g" /etc/openvpn/server-udp-2500.conf
 
wget -qO /etc/openvpn/b.zip 'https://raw.githubusercontent.com/Bonveio/BonvScripts/master/openvpn_plugin64'
 unzip -qq /etc/openvpn/b.zip -d /etc/openvpn
 rm -f /etc/openvpn/b.zip
 
 # Some workaround for OpenVZ machines for "Startup error" openvpn service
 if [[ "$(hostnamectl | grep -i Virtualization | awk '{print $2}' | head -n1)" == 'openvz' ]]; then
 sed -i 's|LimitNPROC|#LimitNPROC|g' /lib/systemd/system/openvpn*
 systemctl daemon-reload
fi

 # Allow IPv4 Forwarding
 echo 'net.ipv4.ip_forward=1' > /etc/sysctl.d/20-openvpn.conf && sysctl --system &> /dev/null && echo 1 > /proc/sys/net/ipv4/ip_forward
 
 apt install firewalld -y
 systemctl start firewalld
 systemctl enable firewalld
 firewall-cmd --quiet --set-default-zone=public
 firewall-cmd --quiet --zone=public --permanent --add-port=1-65534/tcp
 firewall-cmd --quiet --zone=public --permanent --add-port=1-65534/udp
 firewall-cmd --quiet --reload
 firewall-cmd --quiet --add-masquerade
 firewall-cmd --quiet --permanent --add-masquerade
 firewall-cmd --quiet --permanent --add-service=ssh
 firewall-cmd --quiet --permanent --add-service=openvpn
 firewall-cmd --quiet --permanent --add-service=http
 firewall-cmd --quiet --permanent --add-service=https
 firewall-cmd --quiet --permanent --add-service=privoxy
 firewall-cmd --quiet --permanent --add-service=squid
 firewall-cmd --quiet --reload
 
 # Enabling IPv4 Forwarding
 echo 1 > /proc/sys/net/ipv4/ip_forward
 
 # Starting OpenVPN server
 systemctl start openvpn@server-tcp-110
 systemctl start openvpn@server-tcp-1194
 systemctl start openvpn@server-udp-2200
 systemctl start openvpn@server-udp-2500
 systemctl enable openvpn@server-tcp-110
 systemctl enable openvpn@server-tcp-1194
 systemctl restart openvpn@server-udp-2200
 systemctl restart openvpn@server-udp-2500
 
 cd /home/vps/public_html
 
# Now creating all of our OpenVPN Configs 
cat <<EOF1524> /home/vps/public_html/client-tcp-110.ovpn
client
dev tun
proto tcp
remote $IPADDR $OpenVPN_Port1
remote-cert-tls server
resolv-retry infinite
http-proxy $(curl -s http://ipinfo.io/ip || wget -q http://ipinfo.io/ip) $Proxy_Port1
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
keysize 0
comp-lzo
setenv CLIENT_CERT 0
reneg-sec 0
verb 1
<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF1524

cat <<EOF1525> /home/vps/public_html/client-tcp-1194.ovpn
client
dev tun
proto tcp
remote $IPADDR $OpenVPN_Port2
remote-cert-tls server
resolv-retry infinite
http-proxy $(curl -s http://ipinfo.io/ip || wget -q http://ipinfo.io/ip) $Proxy_Port1
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
keysize 0
comp-lzo
setenv CLIENT_CERT 0
reneg-sec 0
verb 1
<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF1525

cat > /home/vps/public_html/client-OHP.ovpn <<-END
client
dev tun
persist-tun
proto tcp
setenv FRIENDLY_NAME OHP
remote "bug.com"
port 443
http-proxy $IPADDR 8087
http-proxy-option VERSION 1.1
http-proxy-option CUSTOM-HEADER Host bug.com
http-proxy-option CUSTOM-HEADER X-Forward-Host bug.com
http-proxy-option CUSTOM-HEADER X-Forwarded-For bug.com
http-proxy-option CUSTOM-HEADER Referrer bug.com
persist-remote-ip
resolv-retry infinite
connect-retry 0 1
remote-cert-tls server
nobind
reneg-sec 0
keysize 0
rcvbuf 0
sndbuf 0
verb 2
auth none
auth-nocache
cipher none
setenv CLIENT_CERT 0
auth-user-pass
<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
END

cat <<EOF16> /home/vps/public_html/client-udp-2200.ovpn
client
dev tun
proto udp
remote $IPADDR $OpenVPN_Port3
remote-cert-tls server
resolv-retry infinite
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
keysize 0
comp-lzo
setenv CLIENT_CERT 0
reneg-sec 0
verb 1
<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF16
 
cat <<EOF17> /home/vps/public_html/client-udp-2500.ovpn
client
dev tun
proto udp
remote $IPADDR $OpenVPN_Port4
remote-cert-tls server
resolv-retry infinite
nobind
tun-mtu 1500
tun-mtu-extra 32
mssfix 1450
persist-key
persist-tun
auth-user-pass
auth none
auth-nocache
cipher none
keysize 0
comp-lzo
setenv CLIENT_CERT 0
reneg-sec 0
verb 1
<ca>
$(cat /etc/openvpn/ca.crt)
</ca>
EOF17

ohp="$(cat /etc/rc.local | grep -i OHP | awk 'NR==1 {print $6}' | cut -d: -f2)"
ovpn="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==1 {print $4}' | cut -d: -f2)"
ovpn2="$(netstat -nlpt | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==2 {print $4}' | cut -d: -f2)"
uovpn="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==1 {print $4}' | cut -d: -f2)"
uovpn2="$(netstat -nlpu | grep -i openvpn | grep -i 0.0.0.0 | awk 'NR==2 {print $4}' | cut -d: -f2)"

cat <<'mySiteOvpn' > /home/vps/public_html/openvpn.html
<!DOCTYPE html>
<html lang="en">
<head><meta charset="utf-8" /><title>UntaDotMy Server Script Openvpn Download Page</title><meta name="description" content="UntaDotMy Server" /><meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" /><meta name="theme-color" content="#000000" /><link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"><link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet"><link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.8.3/css/mdb.min.css" rel="stylesheet"></head><body><div class="container justify-content-center" style="margin-top:9em;margin-bottom:5em;"><div class="col-md"><div class="view"><img src="https://openvpn.net/wp-content/uploads/openvpn.jpg" class="card-img-top"><div class="mask rgba-white-slight"></div></div><div class="card"><div class="card-body"><h5 class="card-title">Config List</h5><br /><ul class="list-group"><li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>OpenVpn TCP port1 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> For telco which don't block tcp port1 </small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://MYIP:81/client-tcp-1.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li><li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>OpenVpn TCP port2 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> For telco which don't block tcp port2 </small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://MYIP:81/client-tcp-2.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li><li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>OpenVpn UDP port3 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> For telco which don't block udp port3 </small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://MYIP:81/client-udp-1.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li><li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>OpenVpn UDP port4 <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> For telco which don't block udp port4 </small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://MYIP:81/client-udp-2.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li><li class="list-group-item justify-content-between align-items-center" style="margin-bottom:1em;"><p>OpenVpn OHP <span class="badge light-blue darken-4">Android/iOS/PC/Modem</span><br /><small> For Bug Hunting ( BETA ) </small></p><a class="btn btn-outline-success waves-effect btn-sm" href="http://MYIP:81/client-OHP.ovpn" style="float:right;"><i class="fa fa-download"></i> Download</a></li>
</ul></div></div></div></div></body></html>
mySiteOvpn

sed -i "s/MYIP/$MYIP/g" /home/vps/public_html/openvpn.html
sed -i "s/port1/$ovpn/g" /home/vps/public_html/openvpn.html
sed -i "s/port2/$ovpn2/g" /home/vps/public_html/openvpn.html
sed -i "s/port3/$uovpn/g" /home/vps/public_html/openvpn.html
sed -i "s/port4/$uovpn2/g" /home/vps/public_html/openvpn.html
sed -i "s/client-tcp-1.ovpn/client-tcp-$ovpn.ovpn/g" /home/vps/public_html/openvpn.html
sed -i "s/client-tcp-2.ovpn/client-tcp-$ovpn2.ovpn/g" /home/vps/public_html/openvpn.html
sed -i "s/client-udp-1.ovpn/client-udp-$uovpn.ovpn/g" /home/vps/public_html/openvpn.html
sed -i "s/client-udp-2.ovpn/client-udp-$uovpn2.ovpn/g" /home/vps/public_html/openvpn.html

echo "$Version" > /root/Version
sleep 2
echo -ne '>>>>>>>>>>>>>>>>>>>>>>>>>>[100%]\r'
rm -f update.sh
echo -ne '\n'
fi