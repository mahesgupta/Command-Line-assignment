echo "Enter the number -"
#Taking the input
read n

# Checks and prints message "No input entered" if the user provides no 
input 
if [[ -z "$n" ]]; then
   echo "No input entered"
   exit 1
fi

re='^[0-9]+$'
if ! [[ $n =~ $re ]] ; then
echo "Not a number, invalid input";
exit 1
fi



i=2

#flag , it will change into 1 if n will be not a prime number
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
