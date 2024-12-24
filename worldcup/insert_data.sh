#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# echo $PSQL

cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT W_GOALS O_GOALS
do
  # insert winner team(s)
  if [[ $WINNER != "winner" ]]
  then
      # get winner team_id
    WINNER_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'") 

    # if not team_id
    if [[ -z $WINNER_TEAM_ID ]]
    then
      # add unique team to teams table (to get 24rows)
      INSERT_WINNER_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
      if [[ $INSERT_WINNER_TEAM == "INSERT 0 1" ]]
      then
        echo Inserted team, $WINNER
      fi

    fi
  fi

  # insert opponnet teams(s)
  if [[ $OPPONENT != 'opponent' ]]
  then
    # get opponnet team_id
    OPPONENT_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # if not found
    if [[ -z $OPPONENT_TEAM_ID ]]
    then
      # add unique team to teams table (to get 24rows)
      INSERT_OPPONENT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
      if [[ $INSERT_OPPONENT_TEAM == 'INSERT 0 1' ]]
      then
        echo Inserted team, $OPPONENT
      fi
    fi

  fi

  # insert data in games

  if [[ $YEAR != "year" && $ROUND != "round"  && $WINNER != "winner" && $OPPONENT != "opponent" && $W_GOALS != "winner_goals" && $O_GOALS != "opponent_goals" ]]
  then

    # get WINNER team_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    
    # get OPPONENT team_id
    OPPONENT_ID=$($PSQL"SELECT team_id FROM teams WHERE name='$OPPONENT'")

    # insert all rows
    INSERT_WC_DATA=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $W_GOALS, $O_GOALS)")

    if [[ $INSERT_WC_DATA == 'INSERT 0 1' ]]
    then
      echo Inserted data for $YEAR
    fi
    
  fi    
done
