#!/bin/bash
echo "🚀 Iniciando la broma épica..."
mkdir -p ~/broma_inicio
cd ~/broma_inicio
if [ ! -d ".git" ]; then
    git init
    echo "Bienvenido al repo de la broma! 😆" > readme.md
echo "🖼️ Descargando imagen realista... esto va a ser épico!"
curl -o imagen_graciosa.jpg https://s2.abcstatics.com/Media/201505/07/pantallaazul--644x362--644x362.JPG
echo "📜 Creando el script de broma..."
echo '#!/bin/bash' > broma.sh
echo 'xdg-open "$HOME/broma_inicio/imagen_graciosa.jpg" & ' >> broma.sh
echo 'notify-send "¡Buenos días, $(whoami)! 🌞" "Tu día comienza con un toque de humor y locura 😂"' >> broma.sh
echo 'echo "😂 ¡Te atrapamos! Ahora disfrútalo mientras trabajas (o procrastinas)!"' >> broma.sh
chmod +x broma.sh
echo "🔊 Añadiendo efectos de sonido sorpresa..."
echo '#!/bin/bash' > sonido.sh
echo 'paplay /usr/share/sounds/freedesktop/stereo/complete.oga' >> sonido.sh
chmod +x sonido.sh