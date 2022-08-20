#!/bin/bash

#Criação das pastas
echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados com sucesso."

#Configurando permissões dos diretorios
echo "Configurando permissões dis diretórios..."
chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Configuração concluida com sucesso."

#Criação dos Grupos
echo "Criando grupos..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso"

#Mudando o grupo dos diretórios
echo "Mudando o grupo dos diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
echo "Grupos dos diretórios alterados com sucesso."

#Criação dos usuários
echo "Criando usuários"
useradd carlos -m -s /bin/bash -g GRP_ADM -p $(openssl passwd 123)
passwd -e carlos 

useradd maria  -m -s /bin/bash -g GRP_ADM -p $(openssl passwd 123)
passwd -e maria

useradd joao  -m -s /bin/bash -g GRP_ADM -p $(openssl passwd 123)
passwd -e joao

useradd debora -m -s /bin/bash -g GRP_VEN -p $(openssl passwd 123)
passwd -e debora 

useradd sebastiana -m -s /bin/bash -g GRP_VEN -p $(openssl passwd 123)
passwd -e sebastiana 

useradd roberto -m -s /bin/bash -g GRP_VEN -p $(openssl passwd 123)
passwd -e roberto 

useradd josefina -m -s /bin/bash -g GRP_SEC -p $(openssl passwd 123)
passwd -e josefina 

useradd amanda -m -s /bin/bash -g GRP_SEC -p $(openssl passwd 123)
passwd -e amanda 

useradd rogerio -m -s /bin/bash -g GRP_SEC -p $(openssl passwd 123)
passwd -e rogerio 
echo "Usuarios criados com sucesso."






