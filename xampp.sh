cd #
cd local-downloads
sudo wget -O xampp.png https://commons.wikimedia.org/wiki/File:XAMPP_Logo.png
sudo mv xampp.png /opt/lampp/img/

sudo mv local-downloads/xampp.desktop /usr/share/applications/
sudo chmod +x /usr/share/applications/xampp.desktop