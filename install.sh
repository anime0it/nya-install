
#install pack

sudo pacman -Syu
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
cd ../
sudo pacman -Rs go
yay -S hyprland-git bluetui
sudo pacman -S hyprpaper wofi waybar kitty tela-circle-icon-theme-black ttf-nerd-fonts-symbols-common  ttf-nerd-fonts-symbols ttf-font-awesome ttf-droid noto-fonts nano neofetch zsh
sudo pacman -Scc

#copy

cp -r configs/hypr ~/.config/
cp -r configs/kitty ~/.config/
cp -r configs/waybar ~/.config/
cp -r configs/wofi ~/.config/
cp -r configs/.zprofile ~/

#post install

chsh -s /bin/zsh
gsettings set org.gnome.desktop.interface icon-theme Tela-circle-icon-theme-black
