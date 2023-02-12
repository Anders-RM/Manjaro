#! /bin/zsh
sudo pacman -Syu --noconfirm
sudo pacman -S git --noconfirm
sudo pacman -S yakuake --noconfirm
sudo pacman -S fzf --noconfirm
sudo pacman -S yay --noconfirm
yay -sa visual-studio-code-bin --noconfirm
yay -Sa microsoft-edge-stable

#git config
ssh-keygen -q -t rsa -N '@Ndersraeder' -f ~/.ssh/id_rsa -C "andersrm1808@gmial.com" <<<y >/dev/null 2>&1
git config --global user.email "andersrm1808@gmial.com"
git config --global user.name "anddersrm1808"

#ohmyzsh
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

#powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
wget https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf

sudo mv MesloLGS\ NF\ Bold\ Italic.ttf /usr/share/fonts/
sudo mv MesloLGS\ NF\ Bold.ttf /usr/share/fonts/
sudo mv MesloLGS\ NF\ Regular.ttf /usr/share/fonts/
sudo mv MesloLGS\ NF\ Italic.ttf /usr/share/fonts/

mv .zshrc ~
mv .p10k.zsh ~

#other
lookandfeeltool -a org.kde.breezedark.desktop
kwriteconfig5 --file ~/.config/kcminputrc --group Mouse --key cursorTheme Adwaita
mv dolphinrc ~/.config/dolphinrc
mv plasma-org.kde.plasma.desktop-appletsrc ~/.config/plasma-org.kde.plasma.desktop-appletsrc
mv yakuakerc ~/.config/yakuakerc
mv konsolerc ~/.config/konsolerc
mkdir -p ~/.local/share/kservices5/ServiceMenus
mv open_as_root.desktop ~/.local/share/kservices5/ServiceMenus
mv Anders.profile ~/.local/share/konsole/Anders.profile
cp /usr/share/applications/org.kde.yakuake.desktop ~/.config/autostart/org.kde.yakuake.desktop

sudo chsh -s $(which zsh)
chsh -s $(which zsh)

#logout
qdbus org.kde.ksmserver /KSMServer org.kde.KSMServerInterface.logout 0 3 3