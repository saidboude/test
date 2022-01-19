#!/bin/bash

#
# Valider le caractere passer en parametres au script
#
function validerCaractere(){
  local caractere=$1
 
 # Valider
 if [[ -z "${caractere}" ]]; then
      echo "ERREUR : Le caractere ${caractere} n'est pas valide."
      return 1
 fi

 return 0;
}

###########################################################################
#
## Main :
#
#  Le script prend en parametre un caractere, redirige la liste de tous les
#  fichiers qui debute par ce caractere dans un fichier liste.txt et 
#  qu il affichera ce contenu.
#
############################################################################

# Verifier nombre des parametres
if [[ ${#} == 1 ]]; then

  # Valider le caractere en parametere
  validerCaractere ${1}

  # Parametre valide
  if [[ ${?} == 0 ]]; then  
     
     fichier_sortie="liste.txt"
     ls ${1}* > ${fichier_sortie} 

     # Afficher le resultat
     cat ${fichier_sortie}

     # Fin avec success
     exit 0;
  else
    # Fin avec erreur
    exit 1;
  fi

else

  # Fin avec erreur
  echo "ERREUR : Il faut passer un caractere en parametre."
  exit 1;

fi
