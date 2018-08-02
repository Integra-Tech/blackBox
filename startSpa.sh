#!/bin/bash

cd $NGINX_HOME
pwd
#pega numero do processo em execução se houver
processo=`ps -a | grep nginx`

#escreve o PID em um arquivo
echo $processo | grep -oP '^[0-9]*' >> pid_nginx

#coloca o PID do processo em uma variável
PID=`cat pid_nginx`

#mata o processo anterior
kill -9 $PID

#exclui o arquivo 
rm pid_nginx

#cria um novo processo
nohup nginx.exe > /dev/null &

cd $WEB_HOME
pwd
#nohup /c/MAVEN/bin/mvn jetty:run -Pjetty -Dorg.eclipse.jetty.annotations.maxWait=320
 $M2_HOME/bin/mvn jetty:run -Pjetty -Dorg.eclipse.jetty.annotations.maxWait=320
