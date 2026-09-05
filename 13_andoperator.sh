#!/bin/bash
# AND opeartor
  read -p "what is your age? " age
  read -p "your country is: " country

  if [ $age -ge 18 ] && [ $country -eq "Pakistan"]
  then
	  echo "you can vote"
	else
		echo "you can't vote"
  fi

