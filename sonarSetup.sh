!# /bin/bash
# @author Allan Henrique allanhenrique@gmail.com
cd ~

smbclient //bsbrsp4466/dados/Novo20%IBPJ/ -c "get sonarqube5.5.9.zip"
smbclient //bsbrsp4466/dados/Novo20%IBPJ/ -c "get settings.xml"
wait;

unzip sonarqube5.5.9.zip

mv sonarqube5.5.9 /opt/sonarqube5.5.9

sudo chmod 755 sonarqube5.5.9/*

cd opt/sonarqube5.5.9/conf/
# aqui preciso adicionar as configuracoes que habilitam o DB H2, indica qual sera o endereco do server
# e a porta onde sera executado
sudo echo 

cat settings.xml
cd ~/.m2
# aqui vou incluir as informacoes do profile no arquivo settings.xml
echo "copie a sessao do 'profile sonar' para o seu settings.xml da pasta .m2" 

while true; do
    read -p "terminou?" yn
    case $yn in
        [Yy]* ) echo "escreve"; continue;;
        [Nn]* ) sleep 20;;
        * ) echo "Please answer yes or no.";;
    esac
done

echo "se no pom.xml nao houver a dependencia do sonar"

sudo echo alias startSonar='./sonar.sh start' >> .bashrc
sudo echo alias stopSonar='./sonar.sh stop' >> .bashrc

