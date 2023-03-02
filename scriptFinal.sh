#! /bin/bash

echo "Criando grupos......."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários......"

echo "Grupo ADM"
useradd carlos -m -c "Carlos" -G GRP_ADM -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd maria -m -c "Maria" -G GRP_ADM -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd joao -m -c "João" -G GRP_ADM -p $(openssl passwd -salt val Senha123) -s /bin/bash

echo "Grupo VEN"
useradd debora -m -c "Debóra" -G GRP_VEN -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd sebastiana -m -c "Sebastiana" -G GRP_VEN -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd roberto -m -c "Roberto" -G GRP_VEN -p $(openssl passwd -salt val Senha123) -s /bin/bash

echo "Grupo SEC"
useradd josefina -m -c "Josefina" -G GRP_SEC -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd amanda -m -c "Amanda" -G GRP_SEC -p $(openssl passwd -salt val Senha123) -s /bin/bash
useradd rogerio -m -c "Rogério" -G GRP_SEC -p $(openssl passwd -salt val Senha123) -s /bin/bash

echo "Criando Diretórios......"

mkdir /publico -m 777
mkdir /adm -m 770
mkdir /ven -m 770
mkdir /sec -m 770

chown root /publico
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Fim......."

