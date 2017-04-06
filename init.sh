#!/usr/bin/env bash

# Chaca se o pacote dialog está instalado, senão o instala
if [ $(dpkg-query -W -f='${Status}' whiptail 2>/dev/null | grep -c "ok installed") -eq 0 ]; then
    gksudo -D 'Atenção!' -m 'Para continuar a execução do aplicação é necessário instalar o programa whiptail, disponível nos repositórios oficiais do ubuntu. Para prosseguir, digite a seja do usuário corrente e confirme!' 'apt install -yqq whiptail'
fi

source ./lib/warning.sh
