# Command-Line-assignment
This is my __Command__ __Line__ __Assignment__.




### Question 1. Write a bash script to get the current date, time, username, home directory and current working directory.   
  ## Solution:     

echo Answer 1:  
*command to get only date*  
echo current date : $(date +%F )  
*command to get only time* 
echo current time : $(date +%T )   
*command to get Username*  
echo Username     : $(whoami)  
*command to get Home diretory*  
echo Home directory: ~  
*command to get current working directory*  
echo Current working directory :$(pwd)  

## Explanation:  
● Used date command with format code %F with echo for displaying the full date; same as %Y-%m-%d.  
● Used date command with format code %T with echo for displaying the time; same as %H:%M:%S.  
● Used whoami command with echo for showing the current username.  
● Used ~(tilde) with echo for displaying the home directory.  
● Used pwd command with echo for displaying the current working directory.  

### OUTPUT :
<img width="596" alt="Screenshot 2023-02-19 at 7 56 13 PM" src="https://user-images.githubusercontent.com/122514232/219955418-59150272-4aaf-4513-8109-5381a8d3c1c0.png">


### Question 2. Write a bash script (name Table.sh) to print the Table of a number by using a while loop. It should support the following requirements.   
● The script should accept the input from the command line.  
● If you don’t input any data, then display an error message to execute the script correctly.  
 ## Solution:




echo "Enter the number -"  
*Taking user input*  
read n  

 *Cheking through case statement*  
case $n in  
*To check if it is a valid number or not*  		
*[^0-9]*)  
	echo "Please provide avalid input"  
	;;  
*Regex to check for number*	  
[0-9]*) 
i=1    			
while [ $i -le 10 ]   
do  
res=`expr $i \* $n`  

echo "$n * $i = $res"  
((++i))  
done  
;;  
*condtion to check for no input*  
*)  
	echo "Error !Please provide input"  
	;;  
esac  



# Explanation:
● Used echo command prompting the user to enter the number, whose table the user wishes to see.  
● Used read command to read user input into a variable n.  
● Used -z switch to test if the expansion of "$n" is a null string or not. If it is a null string then the body is executed.  
● Defined a string re to used as a regular expression to check whether input is valid number or not.  
● re='^[0-9]+$', this regex ensures that the input string starts with a number, a number in between and also ends with a number;   disallows any other             character.      
● Initialized a variable i with 1.  
● Used a while loop to iterate over i from i=1 through i=10, -le specifies less than or equal to.  
● Used a res variable to store the ith multiple of n.  
● Used expr command to evaluate i*n and store the value in res.  
● Used echo to display the current multiple of n in the format, n * i = res.  
● Incremented the value of i to be used for the next iteration.  
● Loops ends when the while condition evaluates to false; i<=10 in this case.  
● The 'while loop' statement is closed by 'done' keyword.  

### OUTPUT :


<img width="533" alt="Screenshot 2023-02-19 at 9 46 47 PM" src="https://user-images.githubusercontent.com/122514232/219960558-ed781883-416a-45bf-91f5-be8ce2e6205e.png">





## Question 3. Write a Function in bash script to check if the number is prime or not? It should support the following requirement.  
● The script should accept the input from the User.    
## Solution:  


echo "Enter the number -"  
*Taking the input*  
read n  
i=2  

*flag , it will change into 1 if n will be not a prime number*  
flag=0  
while test $i -le `expr $n / 2`  
do  
if test `expr $n % $i` -eq 0  
then  
flag=1  
fi  
i=`expr $i + 1`  
done   

if test $n -eq 1  
then   
echo "The number is Not Prime"  
elif test $flag -eq 1  
then  
echo "The number is Not Prime"  
else  
echo "The number is Prime"  
fi  

## Explanation:  
● Used echo command prompting the user to enter the number, which the user wishes to find out if it is prime or not.  
● Used read command to read user input into a variable n.     
● Used a for loop, initializing i as 2, iterating over i from 2 through n/2.  
● Stored remainder of n%i in the variable ans inside the loop.
● Placed a check to display the number isn't prime if the value equals 1. 
● If ans equalled 0, displayed the number isn't prime; exits with status of 0, indicating normal, error-free exit.  
● Used fi keyword to close the if statement.   
● The 'for loop' statement is closed by 'done' keyword.  
● Echoes n is a prime number if the loop executed fully without exiting.  


  ###  OUTPUT :
  <img width="546" alt="Screenshot 2023-02-19 at 9 51 28 PM" src="https://user-images.githubusercontent.com/122514232/219960812-e522cbf1-007a-475f-9a4b-396ddb48689e.png">





## Question 4. Create a bash script that supports the following requirement.  

● Create a folder ‘Assignment’.  
● Create a file ‘File1.txt’ inside ‘Assignment’ Folder.  
● Copy all the content of Table.sh(2nd script) in ‘File1.txt’ without using ‘cp’ and ‘mv’
command.  
● Append the text Welcome to Sigmoid’ to the ‘File1.txt’ file.  
● List all the directories and files present inside Desktop Folder.  

## Solution:



mkdir Assignment  
touch Assignment/File1.txt  
cat Table.sh  >> Assignment/File1.txt  

echo "  Welcome to Sigmoid" >> Assignment/File1.txt  

ls -l ~/Desktop    

Explanation:  
● Used mkdir command to create a directory in the Documents directory.  
● Used touch to create a file File.txt in the Assignment directory.  
● Used cat command to redirect the contents of the file Table.sh into File1.txt by giving the absolute file path instead of printing the contents of the file to the standard output.  
● Used >> to append the contents instead of writing.  
● Used echo with >> to append the string "Welcome to Sigmoid" to the file File1.txt.   
● Used ls -al command for displaying all the directories and files present in the Desktop folder; -a, all files and folders, including ones that are hidden and start with a '.'; -l, list      all files in long format.  


### OUTPUT :

<img width="684" alt="Screenshot 2023-02-19 at 9 58 24 PM" src="https://user-images.githubusercontent.com/122514232/219961253-388ebb6a-2957-4399-b311-2ac40e20fae8.png">







### Question 5. You have given an array. Using Bash script, print its length, maximum element and minimum element.
arr=( 2 3 4 1 6 7).
## Solution:  


echo "Enter an array: "  
*Taking all the element of the array*  
read -a integers  

*we assume here that biggest and smallest element of the array is the first value of the array*  
biggest=${integers[0]}  
smallest=${integers[0]}  

for i in ${integers[@]}
do  
*condition for biggest value*  
     if [[ $i -gt $biggest ]]     
     then    
        biggest="$i"    
     fi   
    *condition for smallest value*   
     if [[ $i -lt $smallest ]]       
     then  
        smallest="$i"    
     fi    
done  
echo "The length of the array is ${#integers[@]}"  
echo "The largest number is $biggest"  
echo "The smallest number is $smallest"  



Explanation:  
● Used echo command prompting the user to enter an array, whose length, maximum and minimum element the user wishes to see.  
● Used read command to read user input as space separated numbers into a variable arr; -a option specifies that the input is assigned to an array.  
● Initialized a variable max with first element of the array.  
● Initialized a variable min with first element of the array.  
● Used a for loop to iterate over the array elements from start to the end; i as the current element of each iteration.  
● Used conditional statement checking if i's value is greater than (hence the option -gt) the value in max variable, and updated max if the expression evaluated to true.  
● Used conditional statement checking if i's value is lesser than (hence the option -lt) the value in min variable, and updated min if the expression evaluated to true.  
● Used fi keyword to close the if statement.   
● The 'for loop' statement is closed by 'done' keyword.  
● Outputting all results, the length, max element, min element of the array.  
● Used echo to display length of the array using ${#arr[@]}; if subscript is @ or *, the word expands to all members of name; by prefixing # to variable we will find length of the array       (i.e number of elements).  
● Used echo to display maximum element of the array stored in the max variable.   
● Used echo to display minimum element of the array stored in the min variable.   


### OUTPUT  
 <img width="671" alt="Screenshot 2023-02-19 at 10 07 16 PM" src="https://user-images.githubusercontent.com/122514232/219961722-50335828-92ca-4042-9f10-a810113eac91.png">












































