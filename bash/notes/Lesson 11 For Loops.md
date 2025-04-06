Lesson 11: For Loops
A for loop in Bash is used to iterate through a sequence until a certain condition is met.

Syntax of a For Loop:

for (( i=0; i<=5; i++ ))
do
  echo "Numbers: $i"
done
Explanation:
The loop starts with i=0, and will keep running until i is less than or equal to 5.

Each time, the loop increases the value of i by 1 (i++).

The echo command inside the loop prints the current value of i on each iteration.

In this case, it will print the numbers from 0 to 5.

For Loop with Strings:
You can also iterate over a list of strings in a similar way. Here’s an example with an array of fruits:


fruits=("apple" "strawberry" "pear" "banana")

for fruit in "${fruits[@]}"
do
  echo "Fruit: $fruit"
done
Explanation:
This loop iterates over each element in the fruits array.

The variable fruit will take the value of each fruit one by one, and then it prints that value using echo.

