#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage: ./deluser.sh user1 user2 ... userN"
	exit 1;
fi

echo "Deletando usuarios do sistema..."
for user in $@; do
userdel -r -f $user 
echo "$user deletado!"
done

echo "Finalizado!"

