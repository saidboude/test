#!/bin/bash

#
# Valider le nom du repertoire saisie
#
function validerRepertoireSaisie(){
  local nom_repertoire=$1
  
  # Valider nom du repertoire
  if [[ ! -d "${nom_repertoire}" ]]; then
      echo "ERREUR : Le nom du repertoire '${nom_repertoire}' n'est pas valide."
      return 1
  fi

  return 0;
}

###########################################################################
#
## Main :
#
#  Le script demande a l'utilisateur un nom de repertoire et qui affiche
#  tous les fichiers de ce meme repertoire qui ont comme extension .dat
#
############################################################################

  # Utilisateur va saisir le nom du repertoire
  echo "Veuillez saisir le nom du repertoire : "
  read -r nom_repertoire

  # Valider la saisie de l'utilisateur
  validerRepertoireSaisie ${nom_repertoire}

  # Parametre valide
  if [[ ${?} == 0 ]]; then  
     
     # Afficher le resultat
     ls -al ${nom_repertoire}/*.dat 

     # Fin avec success
     exit 0;
  else
    # Fin avec erreur
    exit 1;
  fi
