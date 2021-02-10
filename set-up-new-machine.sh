echo "Update"
sudo apt-get update

echo "Install spectacle"
brew cask install spectacle

echo "Install flycut"
brew cask install flycut

echo "Install flux"
open https://justgetflux.com/dlmac.html

echo "Installing tmux"
sudo apt-get install tmux

echo "Installing fasd"
sudo add-apt-repository ppa:aacebedo/fasd
sudo apt update
sudo apt install fasd

echo "Installing npm"
sudo apt install npm

echo "Install karabiner" 
open https://github.com/pqrs-org/Karabiner-Elements/releases/download/v13.3.0/Karabiner-Elements-13.3.0.dmg
