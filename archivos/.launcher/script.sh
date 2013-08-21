#!/bin/bash
## Verificador BASH de correos Powered by  JODACAME
 
resp=`curl -su davidmf16@gmail.com:davisadri https://mail.google.com/mail/feed/atom | grep fullcount`
resp=${resp/<fullcount>/} 
resp=${resp/<\/fullcount>/} 
 
 	if   echo $resp | grep -q '0'; 
	then
 
	DISPLAY=:0.0 /usr/bin/notify-send "Notificaciones GMAIL" " No tiene Correos nuevos"   -i /home/david/proyectos/iconos-daxos/apps/gmail.png
	else
		DISPLAY=:0.0 /usr/bin/notify-send "Notificaciones GMAIL" " Usted tiene "$resp" Mensajes Nuevos"   -i /home/david/proyectos/iconos-daxos/apps/gmail.png
	fi
