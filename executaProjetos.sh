#!/bin/bash

## abri um terminal para executar o BACK
(cd ../ibesrv/jab-ibesrv;
"C:\Program Files\Git\bin\bash.exe" --login -i -c "/c/GiTDevelopment/workspace_ibe/ibe/script/startBack.sh";


## abri um terminal para executar o front
cd ../ibeweb/jab-ibeweb;
"C:\Program Files\Git\bin\bash.exe" --login -i -c "/c/GiTDevelopment/workspace_ibe/ibe/script/startFront.sh")




