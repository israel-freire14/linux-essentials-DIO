#!/bin/bash

echo "Criando diretórios..."

mkdir /publico/
mkdir /adm/
mkdir /ven/
mkdir /sec/

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

#Usuários do grupo GRP_ADM

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_ADM
passwd carlos -e 
useradd maria -m -c "Maria das Graças" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_ADM 
passwd maria -e 
useradd joao -m -c "João dos Santos" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_ADM 
passwd joao -e

#Usuários do grupo GRP_VEN

useradd debora -m -c "Débora Lopez" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_VEN
passwd debora -e
useradd sebastiana -m -c "Sebastiana Ferraz" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_VEN
passwd sebastiana -e
useradd roberto -m -c "Roberto Nogueira" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_VEN
passwd roberto -e

#Usuários do grupo GRP_SEC

useradd josefina -m -c "Josefina dos Anjos" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_SEC
passwd josefina -e
useradd amanda -m -c "Amanda Nunes" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_SEC
passwd amanda -e
useradd rogerio -m -c "Rogério Ceni" -s /bin/bash -p $(openssl passwd -crypt 123@Mudar)  -g GRP_SEC
passwd rogerio -e

echo "Definindo permissões..."

#Permissões do diretório 'publico'

chmod 777 /publico/

#Permissões: usuários só terão acesso aos seus respectivos departamentos

chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

#Dono dos diretórios: root

chown root:root /publico/
chown root:root /adm/
chown root:root /ven/
chown root:root /sec/ 

echo "Finalizado!!!"