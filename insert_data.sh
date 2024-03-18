#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

# this program is for put the information in games.csv in the database 
#!/bin/bash
echo $($PSQL "TRUNCATE teams,games;")
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS;
do
  #Insert data in the table teams
  if [[ $WINNER != winner ]]
    then
      #get values of name winner
      NAME_WINNER=$($PSQL "SELECT team_id from teams where name='$WINNER'")
      #check is exist the database
      if [[ -z $NAME_WINNER ]]
        then
           #Insert WINNER in teams
           INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER');")
           if [[ $INSERT_TEAMS_RESULT == "INSERT 0 1" ]]
            then
              echo Inserted in teams, $WINNER
           fi
      fi
      #get values of name opponert
      NAME_OPPONENT=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
      #check is exist the database
      if [[ -z $NAME_OPPONENT ]]
        then
           #Insert OPPONERT in teams 
           INSERT_TEAMS_RESULT=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT');")
           if [[ $INSERT_TEAMS_RESULT == 'INSERT 0 1' ]]
            then
              echo Inserted in teams, $OPPONENT
           fi
      fi    
  fi  
  #year,round,winner,opponent,winner_goals,opponent_goals
  #2018,Final,France,Croatia,      4,              2
  #get ids of winner and opponert, from table teams
  WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER';")
  OPPONENT_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT';")
  #Insert data in the table games
  if [[ $YEAR != "year" || $ROUND != "round" || $WINNER_GOALS != "winner_goals" || $OPPONENT_GOALS != "opponent_goals" ]]
    then
      INSERT_YEAR_RESULT=$($PSQL "INSERT INTO games(year,round,winner_goals,opponent_goals,winner_id,opponent_id) VALUES($YEAR,'$ROUND',$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID);")
      #check it goes fine
      if [[ $INSERT_TEAMS_RESULT == 'INSERT 0 1' ]]
            then
              echo Inserted in games, $YEAR,$ROUND,$WINNER_GOALS,$OPPONENT_GOALS,$WINNER_ID,$OPPONENT_ID
      fi
  fi
done  
