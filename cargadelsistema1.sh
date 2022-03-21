#!/usr/bin/env bash
#
# script para ver la carga del sistema en el ultimo minuto
#
function carga_ultimominuto {
        /usr/bin/uptime | /usr/bin/grep "load average" | /usr/bin/awk '{print $8}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
carga1=$(carga_ultimominuto)
echo "carga en el ultimo minuto: ${carga1}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field3=${carga1}
