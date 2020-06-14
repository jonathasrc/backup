#!/bin/bash
# DESCRIÇÃO: COMANDO PARA ABRIR O ARQUIVO COMPACTADO. 
           # SERVE PARA INTEGRIDADE DO ARQUIVO COMPACTADO
# SINOPSE: meuscript[opçoes]
# USO: ./script.sh --help
# OPCÕES: -h --help -a
# AUTOR: Jonathas Rodrigues
# VERSÃO: 1.0
# LICENÇA: License GPL <http://gnu.org/licenses/gpl.html> 

# XXX INSERIR ARGUMENTOS COM O ARQUIVO A SER COMPACTADO.
# XXX INSERIR HELP getopts
# XXX VER A POSSIBILIDADE DE INSERIDR DESTINO DO ARQUIVO COMPACTADO
# EM OUTRO DIRETORIO

time=´date +%Y-%m-%d-%H.%M´
origin="./script.sh"
destination="/media/dom/DOM/teste"
# mount /dev/sdax /mnt/backup
mock="true"
if [[ -z "$mock" ]]; then
    exit  2
else
    
    echo "script funcionando"
    tar -zcvf arquivo-"$time".tar.gz $origin
fi
