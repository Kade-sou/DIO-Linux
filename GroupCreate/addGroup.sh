#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage: ./addGroup.sh group1 group2 ... groupN"
	exit 1;
fi

echo "Adcionando Groups do sistema..."
for user in $@; do
groupadd $user 
echo "$user Adcionado!"
done

echo "Finalizado!"

