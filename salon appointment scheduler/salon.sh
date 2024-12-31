#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --tuples-only -c"
echo -e "\n~~~ FCC Salon ~~~"
echo "Welcome to the FCC Salon"

MAIN_MENU () {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
  LIST_SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")
    echo "$LIST_SERVICES" | while read SERVICE_ID BAR NAME
    do 
      echo -e "$SERVICE_ID) $NAME"
    done
  # read user input and select that service
  read SERVICE_ID_SELECTED
  
  #if valid input
  if [[ ! $SERVICE_ID_SELECTED =~ ^[0-9]+$ ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  fi
  # if service doesn't exist
  SERVICE_NAME=$($PSQL "SELECT name FROM services WHERE service_id=$SERVICE_ID_SELECTED")
  if [[ -z $SERVICE_NAME ]]
  then
    MAIN_MENU "I could not find that service. What would you like today?"
  fi
  echo -e "\nWhat's your phone number?"
  # Ask and read your phone
  read CUSTOMER_PHONE
  CUSTOMER_DETAILS=$($PSQL "SELECT * FROM customers WHERE phone='$CUSTOMER_PHONE'")
  # if doesn't exist
  if [[ -z $CUSTOMER_DETAILS ]]
  then
    # ask for name
    echo -e "\nWhat is your name?"
    read CUSTOMER_NAME
    # create a new customer
    INSERT_NEW_CUSTOMER=$($PSQL "INSERT INTO customers (name, phone) VALUES ('$CUSTOMER_NAME', '$CUSTOMER_PHONE')");
  fi
  # ask for time
  echo -e "\nWhat time would you like to $SERVICE_NAME?"
  read SERVICE_TIME
  # get customer details
  GET_CUSTOMER_DETAILS=$($PSQL "SELECT customer_id,name FROM customers WHERE phone='$CUSTOMER_PHONE'") 
  CUSTOMER_ID=$(echo "$GET_CUSTOMER_DETAILS" | sed 's/|.*//; s/ //g')
  CUSTOMER_NAME=$(echo "$GET_CUSTOMER_DETAILS" | sed 's/.*|//; s/ //g')
 
  # store as an appointment for that customer
  INSERT_NEW_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES ($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
  echo -e "\nI have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
  EXIT   
}
EXIT () {
  echo -e "\nThank you for stopping by."
}
MAIN_MENU
