#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage ./mkdir.sh PATH1 PATH2 PATHN"
	exit 1;
fi

echo "Adcionando pastas do sistema..."
for user in $@; do
mkdir $user 
echo "$user adicionado!"
done

echo "Finalizado!"

