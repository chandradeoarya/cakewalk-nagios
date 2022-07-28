#Download it to your home directory with curl:
cd ~
curl -L -O https://github.com/NagiosEnterprises/nrpe/releases/download/nrpe-4.1.0/nrpe-4.1.0.tar.gz

#Extract the NRPE archive:
tar zxf nrpe-4.1.0.tar.gz
cd nrpe-4.1.0/

#Configure
./configure

#Now build and install check_nrpe plugin:
make check_nrpe
sudo make install-plugin