#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=periodic_table -t  -c"

MAIN() {
  if [[ -z $1 ]]
  then
    echo "Please provide an element as an argument."
  else
    ELEMENT=$1
    if [[ $ELEMENT =~ ^[0-9]+$ ]]
    then
      E_ID=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number=$ELEMENT")
    else
      E_ID=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$ELEMENT' OR name='$ELEMENT'")
    fi
    if [[ -z $E_ID ]]
    then
      echo "I could not find that element in the database."
    else
      ELEMENT_INFO=$($PSQL "SELECT * FROM elements INNER JOIN properties USING(atomic_number) INNER JOIN types USING(type_id) WHERE atomic_number=$E_ID")
      read T_ID BAR E_ID BAR SYM BAR NAME BAR MASS BAR MP BAR BP BAR TYPE < <(echo $ELEMENT_INFO)
      echo "The element with atomic number $E_ID is $NAME ($SYM). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MP celsius and a boiling point of $BP celsius."
    fi
  fi
}

MAIN $1
