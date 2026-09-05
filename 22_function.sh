
#!/bin/bash

 #to make a function by Method 1
 function WelcomeNote {
	 echo "____________"
	 echo "Welcome"
	 echo "____________"
 }
   #to calling the function
   WelcomeNote
 # to make a function by Method 2
  WelcomeNote ()
  {
	  echo "_________"
	  echo "Welcome"
	  echo "_________"
  }
  # calling fuction same method
   WelcomeNote

