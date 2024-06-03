#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage: ./addUserGroup.sh group user1 user2 ... userN"
	exit 1;
fi

echo "Adicionando usuarios ao Grupo"
for user in "${@:2}"; do
usermod -G $1 $user
echo "$user add ao $1!"
done

echo "Finalizado!"

