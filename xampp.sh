cd #
cd local-downloads
sudo wget -O xampp.png https://commons.wikimedia.org/wiki/File:XAMPP_Logo.png
sudo mv xampp.png /opt/lampp/img/

sudo wget https://raw.githubusercontent.com/SilentSmeary/silent-debian/main/xampp.desktop
sudo mv local-downloads/xampp.desktop /usr/share/applications/
sudo chmod +x /usr/share/applications/xampp.desktop