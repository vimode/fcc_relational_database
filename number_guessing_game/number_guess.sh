#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
RANDOM_NUMBER=$((RANDOM % 1000 + 1))
COUNT=0

# echo "Enter your username: "
# read USERNAME

GET_USERNAME() {
  echo "Enter your username: "
  read USERNAME
  while [[ -z "$USERNAME" ]]; do
    echo "Enter your username: "
    read USERNAME
  done
}

GET_USERNAME

IS_USER=$($PSQL "SELECT username_id, username FROM usernames WHERE username='$USERNAME'")
USERNAME_ID=$(echo "$IS_USER" | sed 's/|.*//; s/ //g')
USER_NAME=$(echo "$IS_USER" | sed 's/.*|//; s/ //g')

START_GAME () {
  read GUESS
  COUNT=$(( COUNT + 1 ))

  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again: "
    START_GAME
  fi


  if [[ $GUESS -lt $RANDOM_NUMBER ]]
  then
    echo "It's higher than that, guess again: "
    START_GAME
  elif [[ $GUESS -gt $RANDOM_NUMBER ]]
  then
    echo "It's lower than that, guess again: "
    START_GAME
  else
    GET_USER_ID=$($PSQL "SELECT username_id FROM usernames WHERE username='$USERNAME';")
    ADD_GAME_TO_DATABSE=$($PSQL "INSERT INTO games(game_score, username_id) VALUES($COUNT, $GET_USER_ID);")
    echo -e "\nYou guessed it in $COUNT tries. The secret number was $RANDOM_NUMBER. Nice job! "
  fi
}

if [[ $IS_USER ]]
then
  USER_STATS=$($PSQL "SELECT MIN(game_score) AS best, COUNT(game_id) AS total FROM games WHERE username_id=$USERNAME_ID")
  BEST_GAME=$(echo "$USER_STATS" | sed 's/|.*//; s/ //g')
  GAMES_PLAYED=$(echo "$USER_STATS" | sed 's/.*|//; s/ //g')

  echo "Welcome back, $USER_NAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
  
  echo -e "\nGuess the secret number between 1 and 1000: "
  START_GAME
else
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  ADD_USERNAME=$($PSQL "INSERT INTO usernames(username) VALUES('$USERNAME');")

  echo -e "\nGuess the secret number between 1 and 1000: "
  START_GAME
fi
