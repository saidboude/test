#!/bin/bash

#
# Verifier nombre de parametres passer au script
#
function verifierParameteres(){
  local nombreParams=$1
  #echo "Nombre des Parametres = ${nombreParams}"
  if [[ ${nombreParams} == 7 ]]; then
    return 0;
  else
    echo "ERREUR : Il faut passer 7 nombres en parametres."
    return 1;
  fi
}

#
# Fonction plusgrand() : 
#     Recoit une liste de 7 nombres en parameteres et elle affiche tous
#     les nombres qui  sont plus grandes que le premier nombre.  
#
function plusgrands(){
  
  local liste=("${@}")
  local reference=0
  for index in ${!liste[@]}; do
    if [[ $index == 0 ]]; then
      reference=${liste[0]}
    else
      local valeur="${liste[$index]}"
      if [[ ${valeur} -gt "${reference}" ]]; then
        echo "${valeur}"  
      fi  
    fi
  done
}

#############################################################
#
## Main :
#    Le script recoit une liste de 7 nombres. Il affiche
#    tous les nombres qui  sont plus grandes que le premier
#    nombre.
#
#############################################################

# Verifier les parameteres
verifierParameteres $#

# Parametres valides
if [[ ${?} == 0 ]]; then

  # Traitement
  plusgrands $@

  # Fin avec success
  exit 0;

else

  # Fin avec erreur
  exit 1;

fi
