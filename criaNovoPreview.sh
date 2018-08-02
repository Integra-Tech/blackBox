#!/bin/bash

cd ~/projetos/jsfToAngular/src/assets
echo entrei na pasta '~/projetos/jsfToAngular/src/assets'

rm -rf $1

mkdir $1
echo criei a pasta $1

cp index.html ./$1/$1.html
echo copiei o arquivo index para $1

cd ~/Downloads
echo estou em download para pegar o conteudo a ser inputado

RECORTE=`cat $1.html`
echo $RECORTE
sleep 2;

sed -i "/#pontodeinsercao#\a /i${RECORTE}" ~/projetos/jsfToAngular/src/assets/$1/$1.html
