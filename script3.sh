#!/bin/bash

set -x

# Token :
# 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
#

#
# Verifier nombre de parametres passer au script
#
function verifierParameteres(){
  local nombreParams=$1
  
  echo "Nombre des Parametres = ${nombreParams}"

  if [[ ${nombreParams} == 7 ]]; then
    echo "Debut de traitement ..."
    return 0;
  else
    echo "ERREUR : Il faut passer 7 nombre en paramwetres."
    return 1;
  fi
}


#
# Fonction plusgrand() : 
#     Recoit une liste de 7 nombres et elle affiche tous
#     les nombres qui  sont plus grandes que le premier nombre.  
#
function plusgrands(){
  local reference=$1
  local nombre_2=$2
  local nombre_3=$3
  local nombre_4=$4
  local nombre_5=$5
  local nombre_6=$6
  local nombre_7=$7

  liste=${@}
  echo "Liste = ${liste}"

  for in var in "${liste}"; do
     echo "$var";
  done
  
#  if [[ ${#} == 7 ]]; then
#    echo "Debut de traitement ..."
#  else
#    echo "ERREUR : Il faut passer 7 nombre en paramwetres."
#  fi

}

##############################################
#
## Main
#
##############################################
echo Hello World !!

# Verifier Parameteres
verifierParameteres $#

liste="$@"
for var in "$liste"
do
    echo "$var"
done

plusgrands $@

# Parametres valides
if [[ ${?} == 0 ]]; then

 # Reccuperer les deux nombres
 nombre_1=$1
 nombre_2=$2

 # Il faut verifier qu ils sont numeriques !!
 # TO DO .....

 echo "nombre_1= = ${nombre_1}"
 echo "nombre_2= = ${nombre_2}"
 
 # Retourner le Max
 if [[ ${nombre_1} < ${nombre_1} ]]; then
   max=${nombre_1}
 else
   max=${nombre_2}
 fi

 # Afficher le max
 echo "La plus grande valeur entre ${nombre_1} et ${nombre_2} c'est ${max}."

fi
