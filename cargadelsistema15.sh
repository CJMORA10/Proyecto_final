#!/usr/bin/env bash
#
# script para ver la carga del sistema en el minuto 15
#
function carga_minuto15 {
        /usr/bin/uptime | /usr/bin/grep "load average" | /usr/bin/awk '{print $10}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
carga15=$(carga_minuto15)
echo "carga en el minuto 15: ${carga15}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field6=${carga15}
