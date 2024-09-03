sudo apt install nala -y

sudo nala update
sudo nala upgrade -y

sudo nala remove firefox-esr zutty kate sweeper kmag kmousetool kwrite kmouth kaddressbook knotes xterm kwalletmanager juk dragonplayer konqueror imagemagick-6.q16 kmail kdeconnect akregator kontrast gwenview korganizer -y

cd #
sudo rm -rf local-downloads/
sudo mkdir local-downloads/
cd local-downloads/

sudo nala install curl libgtkglext1 fonts-liberation libu2f-udev  -y

sudo wget "https://github.com/Alex313031/thorium/releases/download/M124.0.6367.218/thorium-browser_124.0.6367.218_AVX2.deb"
sudo dpkg -i thorium-browser_124.0.6367.218_AVX2.deb

sudo wget "https://vscode.download.prss.microsoft.com/dbazure/download/stable/f1e16e1e6214d7c44d078b1f0607b2388f29d729/code_1.91.1-1720564633_amd64.deb"
sudo dpkg -i code_1.91.1-1720564633_amd64.deb

sudo nala install git -y 
sudo nala install gh -y

sudo wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
sudo nala update
sudo nala install github-desktop -y

FONT_NAME="MesloLGS Nerd Font Mono"
echo "Installing font '$FONT_NAME'"
# Change this URL to correspond with the correct font
FONT_URL="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/Meslo.zip"
FONT_DIR="$HOME/.local/share/fonts"
TEMP_DIR=$(mktemp -d)
wget -q --show-progress $FONT_URL -O "$TEMP_DIR"/"${FONT_NAME}".zip
unzip "$TEMP_DIR"/"${FONT_NAME}".zip -d "$TEMP_DIR"
mkdir -p "$FONT_DIR"/"$FONT_NAME"
mv "${TEMP_DIR}"/*.ttf "$FONT_DIR"/"$FONT_NAME"
# Update the font cache
fc-cache -fv
# delete the files created from this
rm -rf "${TEMP_DIR}"
echo "'$FONT_NAME' installed successfully."

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

sudo wget -O xampp-linux-x64-8.2.4-0-installer.run https://netcologne.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.2.4/xampp-linux-x64-8.2.4-0-installer.run?viasf=1
sudo sudo chmod 755 xampp-linux-x64-8.2.4-0-installer.run
sudo ./xampp-linux-x64-8.2.4-0-installer.run

cd #
cd local-downloads
sudo wget https://raw.githubusercontent.com/SilentSmeary/silent-debian/main/xampp.desktop
sudo mv xampp.desktop /usr/share/applications/
sudo chmod +x /usr/share/applications/xampp.desktop

cd #
cd /opt/lampp
sudo rm -rf htdocs

sudo mkdir htdocs

sudo chown $USER:$USER htdocs*

sudo nala install virt-manager -y

echo "Install Kitty if not already installed..."

command_exists() {
    command -v "$1" >/dev/null 2>&1
}


if ! command_exists kitty; then
    sudo nala install -y kitty
else
    echo "Kitty is already installed."
fi

echo "Copy Kitty config files"

# Backup existing Kitty config directory if it exists
if [ -d "${HOME}/.config/kitty" ]; then
    cp -r "${HOME}/.config/kitty" "${HOME}/.config/kitty-bak"
fi

# Create the Kitty config directory if it doesn't exist
mkdir -p "${HOME}/.config/kitty/"

# Download the config files
wget -O "${HOME}/.config/kitty/kitty.conf" https://github.com/ChrisTitusTech/dwm-titus/raw/main/config/kitty/kitty.conf
wget -O "${HOME}/.config/kitty/nord.conf" https://github.com/ChrisTitusTech/dwm-titus/raw/main/config/kitty/nord.conf

cd #
cd local-downloads/

sudo wget https://download.anydesk.com/linux/anydesk_6.3.2-1_amd64.deb
sudo dpkg -i anydesk_*.deb

sudo nala install firefox-esr

sudo wget https://download5.operacdn.com/ftp/pub/opera/desktop/113.0.5230.55/linux/opera-stable_113.0.5230.55_amd64.deb
sudo dpkg -i opera-stable_113.0.5230.55_amd64.deb

cd #

sudo rm -rf local-downloads/