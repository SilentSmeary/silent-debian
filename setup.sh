sudo apt install nala -y

sudo nala update
sudo nala upgrade -y

sudo nala remove firefox-esr zutty kate sweeper kmag kmousetool kwrite kmouth kaddressbook knotes xterm kwalletmanager juk dragonplayer konqueror imagemagick-6.q16 kmail kdeconnect akregator kontrast gwenview korganizer -y

cd #
sudo rm -rf local-downloads/
sudo mkdir local-downloads/
cd local-downloads/

sudo nala install curl -y

sudo wget "https://github.com/Alex313031/thorium/releases/download/M124.0.6367.218/thorium-browser_124.0.6367.218_AVX2.deb"
sudo nala install fonts-liberation -y
sudo nala install libu2f-udev -y
sudo dpkg -i thorium-browser_124.0.6367.218_AVX2.deb

sudo wget "https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1e16e1e6214d7c44d078b1f0607b2388f29d729/code_1.91.1-1720564633_amd64.deb"
sudo dpkg -i code_1.91.1-1720564633_amd64.deb

sudo nala install git -y 
sudo nala install gh -y

sudo wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo nala update
sudo nala install github-desktop -y

sudo wget "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip"
sudo mv Meslo.zip /usr/share/fonts
cd #
cd /usr/share/fonts
sudo unzip Meslo.zip
fc-cache -fv

cd #
cd local-downloads

sudo wget "https://github.com/fastfetch-cli/fastfetch/releases/download/2.18.1/fastfetch-linux-amd64.deb"
sudo dpkg -i fastfetch-linux-amd64.deb

sudo wget "https://github.com/SilentSmeary/wallpapers/archive/refs/heads/main.zip"
sudo unzip main.zip
sudo rm -rf /usr/share/wallpapers
sudo mkdir /usr/share/wallpapers
sudo mv wallpapers-main/* /usr/share/wallpapers

sudo wget "https://github.com/gohugoio/hugo/releases/download/v0.129.0/hugo_0.129.0_linux-amd64.deb"
sudo dpkg -i hugo_0.129.0_linux-amd64.deb

sudo wget "https://proton.me/download/PassDesktop/linux/x64/ProtonPass_1.22.1.deb"
sudo dpkg -i ProtonPass_1.22.1.deb

sudo nala install apache2 -y

sudo nala install php-common libapache2-mod-php php-cli -y

sudo nala install virt-manager -y

sudo nala install kitty -y

sudo rm -rf ~/.config/kitty/kitty.conf
sudo rm -rf ~/.config/kitty/nord.conf

sudo wget https://raw.githubusercontent.com/SilentSmeary/silent-debian/main/config/kitty/kitty.conf
sudo wget https://raw.githubusercontent.com/SilentSmeary/silent-debian/main/config/kitty/nord.conf

sudo cp kitty.conf ~/.config/kitty
sudo cp nord.conf ~/.config/kitty

cd #

sudo rm -rf 'local-downloads'