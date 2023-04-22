#sudo apt-get update
#sudo apt-get upgrade
#sudo adduser testuser
#sudo adduser testuser sudo
#cd /home/testuser
#sudo chmod 755 xampp-linux-x64-8.1.12-0-installer.run
#sudo ./xampp-linux-x64-8.1.12-0-installer.run
#sudo apt install net-tools
#sudo /opt/lampp/xampp start


cd /opt/
psql -U postgres -W postgres
\i /opt/script.sql
exit
