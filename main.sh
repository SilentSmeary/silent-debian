sudo apt install nala

sudo nala update
sudo nala upgrade -y

sudo nala remove firefox-esr -y
sudo nala remove korganizer -y
sudo nala remove gwenview -y
sudo nala remove kontrast -y
sudo nala remove akregator -y
sudo nala remove kdeconnect -y
sudo nala remove kmail -y
sudo nala remove imagemagick-6.q16 -y
sudo nala remove konqueror -y
sudo nala remove dragonplayer -y
sudo nala remove juk -y
sudo nala remove kwalletmanager -y
sudo nala remove xterm -y
sudo nala remove knotes -y
sudo nala remove kaddressbook -y
sudo nala remove kmouth -y
sudo nala remove kwrite -y
sudo nala remove kmousetool -y
sudo nala remove kmag -y
sudo nala remove sweeper -y

cd Downloads/
sudo wget "https://github.com/Alex313031/thorium/releases/download/M124.0.6367.218/thorium-browser_124.0.6367.218_AVX2.deb"
sudo nala install fonts-liberation -y
sudo nala install libu2f-udev -y
sudo dpkg -i thorium-browser_124.0.6367.218_AVX2.deb

