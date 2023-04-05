#!/bin/bash

#echo printando o começo do script

echo "Aplicando as configurações de usuários e grupos"

#Criando as pastas dos grupos

mkdir /publico /adm /ven /sec

#Criando grupo GRP_ADM  

groupadd GRP_ADM

#Criando grupo GRP_VEN

groupadd GRP_VEN 

#Criando grupo GRP_SEC

groupadd GRP_SEC

#Trocando o dono e grupo das pastas

chown root:GRP_ADM /adm/

chown root:GRP_VEN /ven/

chown root:GRP_SEC /sec/

#Criando usuários do grupo GRP_ADM (carlos, maria e joao)

useradd carlos -c "usuário do grupo GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM && passwd carlos -e

useradd maria -c "usuário do grupo GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM && passwd maria -e

useradd joao -c "usuário do grupo GRP_ADM" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM && passwd joao -e

#Criando usuários do grupo GRP_VEN (debora, sebastiana e roberto)

useradd debora -c "usuário do grupo GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN && passwd debora -e

useradd sebastiana -c "usuário do grupo GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN && passwd sebastiana -e

useradd roberto -c "usuário do grupo GRP_VEN" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN&& passwd roberto -e

#Criando usuários do grupo GRP_SEC (josefina, amanda e rogerio)

useradd josefina -c "usuário do grupo GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC && passwd josefina -e

useradd amanda -c "usuário do grupo GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC && passwd amanda -e

useradd rogerio -c "usuário do grupo GRP_SEC" -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC && passwd rogerio -e


#Permissão a todos os usuários do sistema a pasta publicO

chmod 777 /publico

#Permissão das pastas 

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

#echo printando o fim do scriot na tela

echo "Fim"
