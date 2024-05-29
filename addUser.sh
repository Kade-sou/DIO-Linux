#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage: ./addUser.sh name1 name2 ... nameN"
	exit 1;
fi

echo "Criando usuarios do sistema..."
for user in $@; do
useradd $user -c "Usuario $user" -s /bin/bash -m
echo ''$user':123' | sudo chpasswd
passwd $user -e
echo "$user criado!"
done

echo "Finalizado!"

