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
sudo nala remove kate -y

sudo mkdir local-downloads/
cd local-downloads/

sudo wget "https://github.com/Alex313031/thorium/releases/download/M124.0.6367.218/thorium-browser_124.0.6367.218_AVX2.deb"
sudo nala install fonts-liberation -y
sudo nala install libu2f-udev -y
sudo dpkg -i thorium-browser_124.0.6367.218_AVX2.deb

sudo wget "https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1e16e1e6214d7c44d078b1f0607b2388f29d729/code_1.91.1-1720564633_amd64.deb"
sudo dpkg -i code_1.91.1-1720564633_amd64.deb

sudo nala install git

sudo wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo nala update
sudo nala install github-desktop -y

sudo wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip"
sudo mv Meslo.zip /usr/share/fonts
cd #
cd /usr/share/fonts
fc-cache -fv

curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

sudo wget "https://github.com/fastfetch-cli/fastfetch/releases/download/2.18.1/fastfetch-linux-amd64.deb"
sudo dpkg -i fastfetch-linux-amd64.deb

sudo wget "https://github.com/SilentSmeary/wallpapers/archive/refs/heads/main.zip"
sudo unzip main.zip
sudo rm -rf /usr/share/wallpapers
sudo mkdir /usr/share/wallpapers
sudo mv wallpapers-main/* /usr/share/wallpapers

sudo nala install kitty
sudo rm -rf ~/.config/kitty/kitty.conf
sudo rm -rf ~/.config/kitty/nord.conf

sudo cp config/kitty/kitty.conf ~/.config/kitty
sudo cp config/kitty/nord.conf ~/.config/kitty

sudo rm -rf 'local-downloads'

echo "[###]   Nala Installed"
echo "[###]   System Updated"
echo "[###]   Thorium Browser Installed"
echo "[###]   Visual Studio Code Installed"
echo "[###]   Installed git"
echo "[###]   Installed Github Desktop"
echo "[###]   Removed Basic KDE Apps"
