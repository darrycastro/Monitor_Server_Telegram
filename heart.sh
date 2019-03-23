#!/bin/sh
#
# Script de verificacion de servicio activado.
#
# 
# Escrito Por: Darry Castro
# Fecha 23/12/2012
#
####################################################################################################

#Datos de Telegram
chat_id="12345678"
token="270725811:AAHN48xNUoR8d1rr8OktO3uesWHR5p324567"
msg="Iniciando el Monitor del Servidor"

function valor()
{
if (( $(ps -ef | grep -v grep | grep $1 | wc -l) > 0 ))
        then
	echo "$1 is running!!!"
else
    	curl -s -F chat_id=$chat_id -F text="$msg" https://api.telegram.org/bot$token/sendMessage > /dev/null 2>&1
    	nohup sh /opt/Datos/Monitor.sh 2> /tmp/foo.err < /dev/null &
fi
}

valor Monitor
