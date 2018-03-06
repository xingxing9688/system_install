#!/bin/bash 
#xingxing 
#2016.11 

#install 
yum ()
 {
  yum -y  install gcc*  openssl  openssl-devel prel-devel perl  net-tools  telnet  lsof    wget    curl-devel curl  lrzsz  git vim   sysstat  -y 
  systemctl disable firewalld
  systemctl status firewalld 
  systemctl stop  firewalld 
 } 

# set ssh 
sshd_config()
 {
  sed -i 's/#Port 22/Port 9120/g'  /etc/ssh/sshd_config
  sed -i 's/#PubkeyAuthentication yes/PubkeyAuthentication yes/g'  /etc/ssh/sshd_config
  #sed -i 's/PermitRootLogin yes/PermitRootLogin no/'  /etc/ssh/isshd_config
 }   

docker_install()
 {
  yum -y install docker 
  systemctl start docker
  systemctl enable docker 
 }



#iptables -t nat -I POSTROUTING -s 192.168.8.0/24 -j SNAT --to-source 192.168.8.1  



ansible ()
{
    yum install epel-release  -y
    yum install ansible   -y 
}
#sshd_config
echo "sshd_config"


##mac office 
#dafa3806@LD168.cc/Sosa9488


yum




