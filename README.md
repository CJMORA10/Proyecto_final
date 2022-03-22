# Proyecto_final
Scripts usados para la automatización
*Se trabajó desde una máquina virtual desplegada con Vagrant, cuyo almacenamiento de disco es de 40 gigas y con almacenamiento de la memoria RAM de 1 giga. se realizaron 6 scripts, uno para ver la RAM ocupada, otro para ver el espacio libre en el disco duro, otros tres para ver la carga del sistema en el último minuto, en los cinco minutos y en los quince minutos; el último script realizado fue el que implementaba la información del API.*
**se escogió la siguiente API del repositorio de github, “exchangerate” que es una API gratis que no necesita autenticación y que muestra el valor del euro en distintas monedas. Utilzando curl https://api.exchangerate.host/latest
se arroja la lista del euro en distintas monedas**
*Para la automalización se colocaron las rutas y nombres de los scripts dentro del crontab, cada script se ejecutaba por minuto y se subía a ThingSpeak*
![image](https://user-images.githubusercontent.com/95873428/159382288-e76933d9-e8d5-4b92-b95a-0f3c0e65d9aa.png)
