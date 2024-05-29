#!/bin/bash 

if [ $# == 0 ] ; then
	echo "Usage ./rmdir.sh PATH1 PATH2 PATHN"
	exit 1;
fi

echo "Deletando pastas do sistema..."
for user in $@; do
rm -R -f $user 
echo "$user deletado!"
done

echo "Finalizado!"

