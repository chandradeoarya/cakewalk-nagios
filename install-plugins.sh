cd ~
curl -L -O https://nagios-plugins.org/download/nagios-plugins-2.2.1.tar.gz

#Extract the NRPE archive and navigate into the extracted directory:
tar zxf nagios-plugins-2.2.1.tar.gz
cd nagios-plugins-2.2.1

#Next configure their installation:
./configure

#Now build and install the plugins:
make
sudo make install