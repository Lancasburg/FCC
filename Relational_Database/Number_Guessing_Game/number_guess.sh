#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t -c"

echo "Enter your username:"
read USER_NAME
USERNAME_LENGTH=${#USER_NAME}
if [[ $USERNAME_LENGTH -le 22 ]]
then
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME'")
  GAMES_PLAYED=0
  BEST_GAME=""
  if [[ -z $USER_ID ]]
  then
    INSERT_USER_RESULT=$($PSQL "INSERT INTO users(name) VALUES('$USER_NAME')")
    USER_ID=$($PSQL "SELECT user_id FROM users WHERE name='$USER_NAME'")
    echo "Welcome, $USER_NAME! It looks like this is your first time here."
  else
    read GAMES_PLAYED BAR BEST_GAME < <(echo $($PSQL "SELECT games_played,best_game FROM users WHERE user_id=$USER_ID"))
    echo "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  fi
  THE_NUM=$((1+$RANDOM%1000))
  TRY=0
  echo "Guess the secret number between 1 and 1000:"
  while :
  do
    read GUESS_NUM
    (( TRY++ ))
    if [[ ! $GUESS_NUM =~ ^[0-9]+$ ]]
    then
      echo "That is not an integer, guess again:"
      (( TRY-- ))
    elif [[ $GUESS_NUM -lt $THE_NUM ]]
    then
      echo "It's higher than that, guess again:"
    elif [[ $GUESS_NUM -gt $THE_NUM ]]
    then
      echo "It's lower than that, guess again:"
    else
      echo "You guessed it in $TRY tries. The secret number was $THE_NUM. Nice job!"
      break
    fi
  done
  (( GAMES_PLAYED++ ))
  if [[ -z $BEST_GAME ]]
  then
    BEST_GAME=$TRY
  elif [[ $TRY -lt $BEST_GAME ]]
  then
    BEST_GAME=$TRY
  fi
  UPDATE_GAME_RESULT=$($PSQL "UPDATE users SET games_played=$GAMES_PLAYED,best_game=$BEST_GAME WHERE user_id=$USER_ID")
else
  echo username too long!
fi

