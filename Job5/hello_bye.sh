#!/bin/bash

#Conditions


if [ "$1" == "Hello" ];then 

    echo "Bonjour, je suis un script !" 

#Sinon si

elif [ "$1" == "Bye" ];then

    echo "Au revoir et bonne journée"

else
 
    echo "Choissisez Hello ou Bye"

fi
