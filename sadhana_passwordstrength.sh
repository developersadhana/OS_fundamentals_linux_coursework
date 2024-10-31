#!/usr/bin/bash

up=0
lo=0
dig=0
sc=0
grade=0
sp_ch='[!@#$%^&*()_+=\-\[\]{}|:;<>,?/]'

echo "Enter your password :"
read password
length=${#password}

for ((i=0; i<length; i++)); do
  x=${password:$i:1}
  if [[ $x =~ [A-Z] ]];
  then
	  up=$((up+1))
   elif [[ $x =~ [a-z] ]];
   then
	   lo=$((lo+1))
    elif [[ $x =~ ^[0-9]+$ ]];
    then
	    dig=$((dig+1))
    elif [[ $x =~ $sp_ch ]]
    then
	    sc=$((sc+1 ))
  fi
done 
       
if (( length >= 8 ));
then
    grade=$((grade+2))
fi

if (( up >= 1  ));
  then
	  grade=$((grade+2))
fi
  
if (( lo >= 1  ));
  then
	  grade=$((grade+2))
fi

  
if (( dig >= 1  ));
  then
	  grade=$((grade+2))
fi
  
if (( sc >= 2  ));
  then
	  grade=$((grade+2))
fi

  
if (( grade <= 0  ));
then
echo "Password very weak"
  
elif  (( grade <= 2  ));
  then
  echo "Password weak"
  
elif  (( grade <= 4  ));
  then
  echo "Password Fair"
  
elif  (( grade <= 6  ));
  then
  echo "Password Strong"
  
elif  (( grade >= 8  ));
  then
  echo "Password Excellent"
fi 
  
 
