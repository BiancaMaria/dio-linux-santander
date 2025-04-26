#!/bin/bash

echo "criando os diretórios"
mkdir publica adm ven sec

echo "criando os grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuários, bash e definindo perfil e senha"
useradd carlos -c "Carlos Eduardo" -m -s /bin/bash -p $(openssl passwd senha123)
useradd maria -c "Maria Eduarda" -m -s /bin/bash -p $(openssl passwd senha123)
useradd joao -c "João Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd debora -c "Débora Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd sebastiana -c "Sebastiana Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd roberto -c "Roberto Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd josefina-c "Josefina Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd amanda -c "Amanda Batista" -m -s /bin/bash -p $(openssl passwd senha123)
useradd rogerio -c "Rogério Batista" -m -s /bin/bash -p $(openssl passwd senha123)

echo "adicionando usuários em seus grupos"
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo "adicionando o root como dono de todos os diretorios"
chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

echo "definindo permissão total para todos os usuários"
chmod 777 /publica/

echo "definindo permissão para os usuários respectivos de cada grupo"
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "fim"
