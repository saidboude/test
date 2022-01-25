#!/bin/bash

#
# Valider les fichiers passer en parametres au script
#
function validerFichiersEnParameteres(){
  local fichier_1=$1
  local fichier_2=$2
 
  # Valider premier fichier
  if [[ ! -f "${fichier_1}" ]]; then
      echo "ERREUR : Le premier fichier ${fichier_1} n'est pas valide."
      return 1
  fi

  # Valider deuxieme fichier
  if [[ ! -f "${fichier_2}" ]]; then
      echo "ERREUR : Le deuxieme fichier ${fichier_2} n'est pas valide."
      return 1
  fi

  return 0;
}

###########################################################################
#
## Main :
#
#  Le script prend en parametre deux fichiers f1.txt et f2.txt,
#  il fusionnera leurs contenu afin de le mettre dans un nouveau fichier
#  f3.txt et il affichera ce resultat.
#
############################################################################

# Verifier nombre desparametres
if [[ ${#} == 2 ]]; then

  # Valider les fichiers en parameteres
  validerFichiersEnParameteres ${@}

  # Parametres valides
  if [[ ${?} == 0 ]]; then  
     # Fusionner les deux fichiers et remplacer la fin 
     # de ligne entre le contenu des deux fichiers par un espace
     fichier_1=$1
     fichier_2=$2
     fichier_sortie="f3.txt"
     cat ${fichier_1} ${fichier_2} | tr '\n' ' ' > ${fichier_sortie} 

     # Afficher le resultat de la fusion
     cat ${fichier_sortie}

     # Fin avec success
     exit 0;
  else
    # Fin avec erreur
    exit 1;
  fi

else

  # Fin avec erreur
  echo "ERREUR : Il faut passer juste deux fichiers valides en parametres."
  exit 1;

fi
