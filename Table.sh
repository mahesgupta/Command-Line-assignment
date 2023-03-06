# Taking input from the user
echo "Enter the number: "
read n

# Checks and prints message "No input entered" if the user provides no 
input 
if [[ -z "$n" ]]; then
   echo "You have not entered the Number"
   exit 1
fi



re='^[0-9]+$'
if ! [[ $n =~ $re ]] ; then
	echo "Not a number, invalid input";
	exit 1
fi

# initializing i with 1
i=1
  
# Looping i, i should be less than
# or equal to 10, i.e., -le stands for less than or equal to
while [ $i -le 10 ]
do
	res=`expr $i \* $n`

	# printing on console
	echo "$n * $i = $res"
 
	# incrementing i by one 
	# i = `expr $i + 1` 
	((++i))
  
# end of while loop  
done
