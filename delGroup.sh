#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage: ./delGroup.sh group1 group2 ... groupN"
	exit 1;
fi

echo "Removendo Groups do sistema..."
for user in $@; do
groupdel $user 
echo "$user removido!"
done

echo "Finalizado!"

#groupadd
