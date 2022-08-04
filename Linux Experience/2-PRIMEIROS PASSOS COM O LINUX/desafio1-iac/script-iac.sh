#!/bin/bash

echo "Excluindo diretórios de testes..."

rm -Rf /adm/
rm -Rf /ven/
rm -Rf /publico/
rm -Rf /sec/
rm -Rf /Downloads/
rm -Rf /Mariana/
rm -Rf /Textos/

echo "Excluindo usuários de testes..."

userdel -r convidado
userdel -r convidado1
userdel -r guest10
userdel -r guest11
userdel -r guest12
userdel -r guest13
userdel -r mariana
userdel -r rodrigo
userdel -r daniel
userdel -r maisa

userdel -r carlos
userdel -r maria
userdel -r joao

userdel -r debora
userdel -r sebastiana
userdel -r roberto

userdel -r josefina
userdel -r amanda
userdel -r rogerio

echo "Excluindo grupos de usuários de testes..."

groupdel GRP_ADM
groupdel GRP_SEC
groupdel GRP_VEN

echo "Criando diretórios padrão..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando novos usuários..."

useradd carlos -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd carlos -e
useradd maria -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd maria -e
useradd joao -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_ADM
passwd joao -e

useradd debora -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd debora -e
useradd sebastiana -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd sebastiana -e
useradd roberto -m -c "Usuario convidado" -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_VEN
passwd roberto -e

useradd josefina -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd josefina -e
useradd amanda -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd amanda -e
useradd rogerio -c "Usuario convidado" -m -s /bin/bash -p $(openssl passwd -1 Senha123) -G GRP_SEC
passwd rogerio -e

echo "Atribuindo permissões de acesso..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Script executado com sucesso!"
