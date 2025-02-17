#!/bin/bash
echo "🚀 Iniciando la broma épica..."
mkdir -p ~/broma_inicio
cd ~/broma_inicio

if [ ! -d ".git" ]; then
    git init
    echo "Bienvenido al repo de la broma! 😆" > readme.md
fi

echo "🖼️ Descargando imagen realista... esto va a ser épico!"
curl -o imagen_graciosa.jpg https://s2.abcstatics.com/Media/201505/07/pantallaazul--644x362--644x362.JPG

echo "🔊 Configurando el sonido de la broma..."
cp "/mnt/data/Windows Error Remix.mp3" "$HOME/broma_inicio/sonido_broma.mp3"

echo "📜 Creando el script de broma..."
echo '#!/bin/bash' > broma.sh
echo 'xdg-open "$HOME/broma_inicio/imagen_graciosa.jpg" & ' >> broma.sh
echo 'notify-send "¡Buenos días, $(whoami)! 🌞" "Tu día comienza con un toque de humor y locura 😂"' >> broma.sh
echo 'paplay "$HOME/broma_inicio/sonido_broma.mp3" &' >> broma.sh  # Usa `paplay` si está disponible
echo 'echo "😂 ¡Te atrapamos! Ahora disfrútalo mientras trabajas (o procrastinas)!"' >> broma.sh
chmod +x broma.sh

echo "⚙️ Configurando la broma para que se ejecute al inicio..."
mkdir -p ~/.config/autostart
echo "[Desktop Entry]
Type=Application
Exec=$HOME/broma_inicio/broma.sh
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name=BromaRealista
Comment=El mejor inicio de día con una imagen y una sorpresa épica 😆" > ~/.config/autostart/broma.desktop

echo "📝 Agregando la broma a crontab por si acaso..."
(crontab -l 2>/dev/null; echo "@reboot $HOME/broma_inicio/broma.sh") | crontab -

echo "✅ Todo listo. La víctima verá la imagen y escuchará el sonido al inicio. 😆"
echo "Que disfrute la sorpresa y que se ría mucho! 🎉"