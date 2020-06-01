#!/bin/bash

function encrypt(){
	echo "you selected enryption"
		read -p "Please enter the file name: " file
		gpg -c $file
		rm -r $file
		echo "the file has been encrypted and the original has been deleted"
}
function decrypt(){
echo "you selected decryption"
		read -p "Please enter the file name: " file
		gpg -d $file
		echo "the file has been decrypted and the encrypted file has been deleted"
}

echo "File Encrypter/Decrypter"
echo "Please choose what you want to do:"
choice="Encrypt  Decrypt Exit"
select option in $choice;
do
	if [ $REPLY  = 1 ];
	then 
		encrypt
	elif [ $REPLY = 2 ];
	then
		decrypt
	else
		echo "you have choosen to get out"
		exit 0
	fi
done