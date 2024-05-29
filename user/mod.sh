#!/bin/bash 

if [ $# == 0 ] ; then
	echo "No arguments"
	exit 1;
fi

echo "Adicionando privilegios do sistema..."
for user in $@; do
usermod -G adm,sudo $user 
echo "$user add!"
done

echo "Finalizado!"

#groupadd
#groupdel
