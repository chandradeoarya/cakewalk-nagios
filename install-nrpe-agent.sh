#First create a nagios user which will run the NRPE agent:
sudo useradd nagios

#Install libraries
sudo apt update
sudo apt install autoconf gcc libmcrypt-dev make libssl-dev wget dc build-essential gettext -y

#Download Nagios Plugins to your home directory with curl:
cd ~
curl -L -O https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz

#Extract the Nagios Plugins archive and change to the extracted directory:
tar zxf nagios-plugins-2.2.1.tar.gz
cd nagios-plugins-2.2.1
./configure

#compile the plugins:
make
sudo make install

#install NRPE daemon
cd ~
curl -L -O https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz
tar zxf nrpe-4.1.0.tar.gz
cd nrpe-4.1.0/

#Configure NRPE:
./configure

#Now build and install NRPE and its startup script with these commands:
make nrpe
sudo make install-daemon
sudo make install-config
sudo make install-init