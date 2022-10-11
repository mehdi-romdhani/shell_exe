#!/bin/bash


#Déclarations Variables

INPUT=Shell_Userlist.csv
OLDIFS=$IFS
IFS=,
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

#Boucle Tant que 
while read id nom prenom mdp role
do
 echo "ID : $id"
        echo "Nom : $nom"
        echo "Prenom : $prenom"
        echo "Mot de passe : $mdp"
        echo "Role : $role"

#Commande pour ajouter des users
sudo useradd -m $nom
echo $nom:$mdp | sudo chpasswd
done < $INPUT

#Boucle ajout Admin

while read id nom prenom mdp role
do
echo "$role"
if [ $role == "Admin" ]
then
sudo usermod -aG sudo $nom
echo "$nom  ajouter au groupe sudo"
fi
done < $INPUT

