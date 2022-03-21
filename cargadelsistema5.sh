#!/usr/bin/env bash
#
# script para ver la carga del sistema en el minuto 5
#
function carga_minuto5 {
        /usr/bin/uptime | /usr/bin/grep "load average" | /usr/bin/awk '{print $9}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
carga5=$(carga_minuto5)
echo "carga en el minuto 5: ${carga5}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field5=${carga5}
