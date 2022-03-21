#!/usr/bin/env bash
#
# script para ver el espacio libro en el disco duro
#
function espacio_libre {
        /usr/bin/df -h | /usr/bin/grep "/dev/sda1" | /usr/bin/awk '{print $4}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
libre=$(espacio_libre)
echo "espacio disponible en el disco: ${libre}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field2=${libre}
