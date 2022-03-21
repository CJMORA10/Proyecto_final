#!/usr/bin/env bash
#
# script para ver el precio del euro en dolares
#
function info_api {
        /usr/bin/curl https://api.exchangerate.host/latest -s | /usr/bin/jq | /usr/bin/grep "USD" | /usr/bin/awk '{print $2}'
}

CHANNEL_KEY=3ATUPCGLFTQT7CYY
euro=$(info_api)
echo "Precio del euro en dolares es: ${euro}"
/usr/bin/curl https://api.thingspeak.com/update?api_key=3ATUPCGLFTQT7CYY\&field4=${euro}
