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




