#!/usr/bin/env bash
#
# script para ver la RAM ocupada
#
function ram_ocupada {
	/usr/bin/vmstat -s | /usr/bin/grep "used memory" | /usr/bin/awk '{print $1}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
ram=$(ram_ocupada)
echo "ram ocupada: ${ram}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field1=${ram}

