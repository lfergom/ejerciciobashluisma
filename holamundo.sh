#!/bin/bash
# Mensaje inicial para el "virus"
echo "¡ATENCIÓN! 🚨🚨🚨"
sleep 3
echo "¡Tu sistema ha sido infectado por el virus de chill de cojones! 🤖💻"
sleep 3


abrir_en_firefox() {
    if command -v xdg-open >/dev/null; then
        xdg-open "$1" &  # Abre el enlace en el navegador predeterminado (no solo Firefox)
    elif command -v firefox >/dev/null; then
        if [ -n "$SUDO_USER" ]; then
            sudo -u "$SUDO_USER" firefox --new-window "$1" &
        else
            firefox --new-window "$1" &
        fi
    else
        echo "Ningún navegador compatible encontrado. Instálalo con: sudo apt install firefox"
    fi
}


# Función para abrir múltiples terminales
abrir_terminales() {
    for i in {1..10}; do
        gnome-terminal -- bash -c "echo '¡Pim pam toma lacasitos! 🎉'; exec bash" &
    done
}

# Primer video meme
Meme_URL_1="https://www.youtube.com/watch?v=mNCz5mgWAsQ"
echo "¡Activando meme de la abuela! 💣"
sleep 2
abrir_en_firefox "$Meme_URL_1"  # Abre el primer video meme en el navegador
sleep 2
echo "¡Pim pam toma lacasitos! 🎉"
sleep 2

# Segundo video meme
Meme_URL_2="https://www.youtube.com/watch?v=Q8Oz-zwcsCk"
echo "¡Ahora, prepárate para un meme de proporciones épicas! 😎"
sleep 2
abrir_en_firefox "$Meme_URL_2"  # Abre el segundo video meme en el navegador
sleep 2

# Abrir múltiples terminales
echo "¡Abriendo múltiples terminales! 💻💥"
sleep 2
abrir_terminales


# Mensaje final del "virus"
echo "¡JAJAJA! Te has convertido en víctima del virus de chill de cojones. 😈"
sleep 2
echo "Recuerda, no puedes escapar. ¡La risa es inevitable! 😂"
sleep 2
echo "Si no te has reído, el virus podría repetirse... ¡¡PIM PAM TOMÁ LACASITOS!! 🍬"
sleep 2
echo "Este virus ha sido desactivado por ahora, pero siempre puedes invocar más memes. 😏"
sleep 2
echo "¡Nos vemos en la próxima broma, si es que sobreviviste! 😜"
sleep 1
