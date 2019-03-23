# Monitor_Server_Telegram
Script para Monitoriar Servidor Centos con mensajes de **Telegram**

El Script **Monitor.sh** supervisa los 3 componentes as esenciales del sistema,

* CPU
* Memoria
* Disco
* Servicios
* Correos
* Ataques

Almamacenado en una base de datos para su estudio diario o cada 15 días,

## Dependencias
1. sudo yum install ImageMagick

## Install
1. Solo con Copiar el Codigo en la ruta /opt/Datos
2. El archivo **heard.sh** se le debe crear un crontab, para su verificacion cada hora en el servidor
3. En los campos **chat_id** y **token** va la informacion del grupo creado en Telegram
