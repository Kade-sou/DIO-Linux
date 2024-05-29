#!/bin/bash 

if [ $# == 0 ] ; then
	echo "No arguments"
	exit 1;
fi

echo "Deletando usuarios do sistema..."
for user in $@; do
userdel -r -f $user 
echo "$user deletado!"
done

echo "Finalizado!"

