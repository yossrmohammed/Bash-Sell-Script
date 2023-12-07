# Bash-Sell-Script
# Lab 1

### Using sed utility
#### 1- Display the lines that contain the word “lp” in /etc/passwd file.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q1%5C.png)
#### 2- Display /etc/passwd file except the third line.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q2.png)
#### 3- Display /etc/passwd file except the last line.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q3.png)
#### 4- Display /etc/passwd file except the lines that contain the word “lp”.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q4.png)
#### 5- Substitute all the words that contain “lp” with “mylp” in /etc/passwd file.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q5.png)
### Using awk utility
#### 1- Print full name (comment) of all users in the system.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q1-awk.png)
#### 2- Print login, full name (comment) and home directory of all users.( Print each line preceded by a line number)
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q2-awk.png)
#### 3- Print login, uid and full name (comment) of those uid is greater than 500
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q3-awk.png)
#### 4- Print login, uid and full name (comment) of those uid is exactly 500
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q4-awk.png)
#### 5- Print line from 5 to 15 from /etc/passwd
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q5-awk.png)
#### 6- Change lp to mylp
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q6-awk.png)
#### 7- Print all information about greatest uid.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q7-awk.png)
#### 8- Get the sum of all accounts id’s.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab1/q8-awk.png)

# Lab 2


####  1. Create a script that asks for user name then send a greeting to him.
##### #! /bin/bash
##### echo Enter your name:
##### read uname
##### echo "Hello $uname :)" .
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q1.png)
### 2. Create a script called s1 that calls another script s2 where:
#### a. In s1 there is a variable called x, it's value 5

#### b. Try to print the value of x in s2 by two different ways.
##### way 1: 
##### IN S1:
###### #! /bin/bash
###### export x=5
###### ./s2.sh
##### IN S2:
##### echo $x
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q2-a.png)
##### way 2: 
##### IN S1:
###### #! /bin/bash
######  x=5
###### ./s2.sh $x 
##### IN S2:
##### echo $1
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q2-b.png)
### 3. Create a script called mycp where:
#### a. It copies a file to another
#### b. It copies multiple files to a directory.
###### #! /bin/bash
###### cp $@ 
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q3.png)
### 4. Create a script called mycd where:
#### a. It changed directory to the user home directory, if it is called without arguments.
#### b. Otherwise, it change directory to the given directory.
###### #! /bin/bash
###### if [ $# -eq 1 ] 
###### then
###### cd $1 
###### else
###### cd ~  
###### fi
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q4.png)
### 5. Create a script called myls where:
#### a. It lists the current directory, if it is called without arguments.
#### b. Otherwise, it lists the given directory.
###### #ls $@
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q5.png)
### 6. Enhance the above script to support the following options individually:
#### a. –l: list in long format
#### b. –a: list all entries including the hiding files.
#### c. –d: if an argument is a directory, list only its name
#### d. –i: print inode number
#### e. –R: recursively list subdirectories
##### #! /bin/bash

###### if [ $1 = "-l" ]
###### then
###### ls -l $@ 
###### elif [ $1 = "-a" ]
###### then
###### ls -a $@ 
###### elif [ $1 = "-d" ]
###### then
###### ls -d $@
###### elif [ $1 = "-i" ]
###### then
###### ls -i $@
###### elif [ $1 = "-R" ]
###### then
###### ls -R $@   
###### fi
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q6.png)
### 7. Create a script called mytest where
#!/bin/bash
######  echo "Type : "
######  if [ -f $1 ] 
###### then       
###### 	echo file
######  elif [ -d $1 ] 
###### then
###### echo directory
###### fi
###### echo  Available permissions : 
###### if [ -r $1 ] 
###### then
###### 	echo  Read
###### fi
###### if [ -w $1 ] 
###### then       
###### 	echo   Write
###### fi
###### if [ -x $1 ] 
###### then
######        	echo  Execute
######  fi
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q7.png)

### 8. Create a script called mytest where

   #### 1- It asks the user about his/her login name
  #### 2-It prints full info about files and directories in his/her home directory
  #### 3-Copy his/her files and directories as much as you can in /tmp directory Get his current processes status

###### #!/bin/bash

######  read -p "enter your login name : " lname;
######  homedir="/home/$lname"

######  if [ -e $homedir ]
###### then
###### ls -l $homedir


 ###### echo "Processes Status : "
###### ps -f
###### cp -r $homeDir /tmp
###### fi


![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab2/output/q8.png)

# Lab 3

### 1. Write a script called mycase, using the case utility to checks the type of character entered by a user:
### a. Upper Case.
### b. Lower Case.
### c. Number.
### d. Nothing.
######  #! /bin/bash
 ###### export LC_COLLATE=C
 ###### shopt -s extglob
 ###### read -p "Enter character : " char

######  case $char in
###### @([A-Z]))
######  echo Uper Case 
###### ;;
######  @([a-z]))
###### echo Lower Case
###### ;;
###### 	@([0-9]))
###### 		echo Number
###### 		;;
###### 	*)
###### 		echo Nothing
###### 		;;
###### esac

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q1.png)

### 2. Enhanced the previous script, by checking the type of string entered by a user:
### a. Upper Cases.
### b. Lower Cases.
### c. Numbers.
### d. Mix.
### e. Nothing.
######  #! /bin/bash
######  export LC_COLLATE=C
######  shopt -s extglob
######  read -p "Enter String : " char

 ###### case $char in
###### 	 +([A-Z]))
###### 		 echo Uper Case
###### 		 ;;
###### 	+([a-z]))
###### 		echo Lower Case
###### 		;;
###### 	+([0-9]))
###### 		echo Number
###### 		;;
###### 	+([a-zA-Z0-9]))
###### 		echo Mixed String
###### 		;;
###### 	*)
###### 		echo Nothing
###### 		;;
###### esac

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q2.png)

### 3. Write a script called mychmod using for utility to give execute permission to all files and directories in your home directory.
 ###### #! /bin/bash
###### cd ~
###### for files in `ls  `
###### do
###### chmod +x ~/$files
###### done
 
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q3-before.png)
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q3-after.png)

### 4. Write a script called mybackup using for utility to create a backup of only files in your home directory.
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q4.png)


### 5. Write a script called mymail using for utility to send a mail to all users in the system. Note: write the mail body in a file called mtemplate. 
###### #! /bin/bash 
###### for name in `cut -d: -f1 /etc/passwd`
###### do
###### 	if [[ -d "/home/$name" ]]
###### 	then 
###### 	mail -s "geeting mail" $name < mtemplate
###### 
###### 	echo sending mail to $name $?
###### 	fi	
###### done

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q5.png)

### 6. Write a script called chkmail to check for new mails every 10 seconds. Note: mails are saved in /var/mail/username.
###### #! /bin/bash
######  declare -i noofmails=0

###### while true 
###### do
###### newmail=`cat /var/mail/$USER | wc -l` 
###### if [[ $newmail > $noofmails  ]]
###### then
###### 	echo NEW MAIL 
###### fi
###### noofmails=$newmail



###### done
###### sleep 10

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q6.png)

### 7. What is the output of the following script
##### output is 1



### 8. Create the following menu:
### a. Press 1 to ls
### b. Press 2 to ls –a
### c. Press 3 to exit 
### Using select utility then while utility.
###### #! /bin/bash

###### select item in 'ls' 'ls -a' 'exit'
###### do
######  while [[ $item =  "ls"  ]]
######  do 
###### 	 read -p "enter path :" path
###### 	 ls $path
###### 	 break
 ###### done
 ######  while [[ $item =  "ls -a"  ]]
 ###### do
######          read -p "enter path :" path
######          ls -a $path
###### 	 break
 ###### done
######  while [[ $item =  "exit"  ]]
 ###### do
         
###### 	 exit 1
######  done

###### done

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q8.png)

### 9. Write a script called myarr that ask a user how many elements he wants to enter in an array, fill the array and then print it.
###### #! /bin/bash
###### size=0
###### read -p "enter size of array : " size
###### while (( $size <= 0  ))
###### do 
###### echo invalid value
###### read -p "enter size of array : " size
###### done
###### for (( i = 0; i < $size; ++i ))
###### do
 ###### read -p "enter element number : $((i+1)) : "  arr[$i]
###### done

###### echo ${arr[@]}

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q9.png)

### 10.Write a script called myavg that calculate average of all numbers entered by a user. Note: use arrays
###### #!/bin/bash

###### read -p "enter size of array : " size

###### while (( $size <= 0  ))
###### do
###### echo invalid value
###### read -p "enter size of array : " size
###### done

###### sum=0
###### for (( i = 0; i < $size; ++i ))
###### do
######  read -p "enter element number : $((i+1)) : " value
######  arr[$i]=value
######  ((sum += $value))
###### done

###### echo $sum/$size  | bc -l
![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q10.png)

### 11.Write a function called mysq that calculate square if its argument.
###### #!/bin/bash

###### function mysq
###### {
######       	(( square = $1 * $1 ))
###### 	echo $square;
###### }

###### mysq $1

![UNFOUND](https://github.com/yossrmohammed/Bash-Sell-Script/blob/main/lab3/output/q11.png)
