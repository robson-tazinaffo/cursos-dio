#!/bin/bash

echo "Criando usuários do sistema..."

useradd guest10 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest10 -e

useradd guest11 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest11 -e

useradd guest12 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest12 -e

useradd guest13 -c "Usuario convidado" -s /bin/bash -m -p $(openssl passwd -1 Senha123)
passwd guest13 -e

echo "Usuários criados!"