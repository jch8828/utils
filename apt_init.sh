sudo apt update
sudo apt install git
sudo apt install maven
sudo apt install gradle

sudo apt install software-properties-common
sudo add-apt-repository ppa:philip.scott/elementary-tweaks
sudo apt update
sudo apt install elementary-tweaks

sudo apt install ubuntu-restricted-extras
sudo apt install libavcodec-extra
sudo apt install libdvd-pkg
sudo dpkg-reconfigure libdvd-pkg
sudo apt-get install unace rar unrar p7zip-rar p7zip sharutils uudeview mpack arj cabextract lzip lunzip

sudo add-apt-repository ppa:linrunner/tlp
sudo apt-get update
sudo apt-get install tlp tlp-rdw
sudo tlp start

sudo apt install gdebi
sudo apt install synaptic
sudo apt install snapd

sudo apt-add-repository -y ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift
sudo apt install com.github.davidmhewitt.clipped
#Go to Settings → Keyboard → Shortcuts and add this command com.github.davidmhewitt.clipped –show-paste-window 
# and assign a shortcut for it. For example, I use Ctrl+Space:

wget -qnc https://repo.nordvpn.com/deb/nordvpn/debian/pool/main/nordvpn-release_1.0.0_all.deb
sudo dpkg -i nordvpn-release_1.0.0_all.deb
sudo apt update
sudo apt install nordvpn

sudo apt-get autoclean
sudo apt-get clean
sudo apt-get autoremove

sudo snap install vlc
sudo snap install libreoffice
sudo snap install chromium
sudo snap install simplenote
sudo snap install code --classic
sudo snap install intellij-idea-ultimate --classic

cd ~
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libffi-dev liblzma-dev python-openssl git -y
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshrc
source ~/.zshrc
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.zshrc
source ~/.zshrc




