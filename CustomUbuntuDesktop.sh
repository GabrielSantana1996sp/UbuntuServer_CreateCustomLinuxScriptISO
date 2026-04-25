sudo apt update && sudo apt upgrade -y

# Servidor X e Drivers
sudo apt install -y --no-install-recommends xserver-xorg xserver-xorg-video-all mesa-utils

# Interface e Gerenciador de Login
sudo apt install -y --no-install-recommends lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

# Desktop XFCE e Ferramentas Essenciais
sudo apt install -y --no-install-recommends xfce4 xfce4-goodies xfce4-session \
xfce4-power-manager xfce4-panel xfce4-settings xfce4-terminal \
xfce4-whiskermenu-plugin thunar thunar-archive-plugin mousepad \
lxappearance feh papirus-icon-theme adwaita-icon-theme

#Áudio, Rede e Utilitários de Interface
sudo apt install -y pasystray pavucontrol network-manager-gnome gvfs-backends

#Stack de Desenvolvimento (Dev)
sudo apt install -y python3 python3-pip python3-venv default-jdk default-jre \
golang-go nodejs npm rustc cargo git make cmake autoconf automake gdb

# Segurança e Auditoria (Sec)
sudo apt install -y apparmor nftables fail2ban clamav clamav-daemon \
gnupg auditd lynis debsums logcheck fail2ban crowdsec

# Infra e Containers (Ops)
sudo apt install -y podman ansible systemd-container

#Ativar Interface Gráfica
sudo systemctl set-default graphical.target
sudo systemctl enable lightdm

# Atualizar base do ClamAV
sudo systemctl stop clamav-freshclam
sudo freshclam
sudo systemctl start clamav-freshclam

#Ajuste de Permissões para Docker/Podman
sudo usermod -aG docker $USER
