Lesson 12.1: Break and Continue & 12.2 
Break Statement:
The break statement is used to exit the innermost loop when a certain condition is met. Once break is executed, the loop stops, regardless of the condition.

Here’s an example:


for (( i=0; i<=9; i++ ))
do
  if [ $i -eq 7 ]
  then
    break
  fi
  echo "Number: $i"
done
Explanation:
This loop starts from i=0 and will loop until i equals 9.

If i equals 7, the break statement will execute, and the loop will terminate immediately.

Until i reaches 7, it will print the current value of I.




Lesson 12.2: Continue
The continue statement in Bash is used to skip the current iteration of a loop and move to the next iteration. Instead of exiting the loop entirely (like break), continue just skips the rest of the code inside the loop for the current iteration.

Example of Continue in a For Loop:

for (( i=0; i<=9; i++ ))
do
  if [ $i -eq 7 ]
  then
    continue  # Skip the current iteration when $i is 7
  fi
  echo "Number: $i"
done
Explanation:
This loop iterates from 0 to 9.

When $i equals 7, the continue statement will skip the rest of the loop for that iteration and jump to the next one, so 7 will not be printed.

For all other numbers, the loop continues to print them.

While Loop with Break and Continue
A while loop runs as long as the specified condition is true. You can use break and continue within a while loop in a similar way as in for loops.

While Loop with Break:

count=1
while true
do
  echo "Count: $count"
  ((count++))
  if [ $count -eq 4 ]
  then
    break  # Exit the loop when count reaches 4
  fi
done
Explanation:
The while true loop runs indefinitely because the condition true is always true.

On each iteration, it increments the count variable.

Once count reaches 4, the break statement stops the loop.

While Loop with Continue:
You can also use the continue statement in a while loop to skip over certain iterations.


count=1
while [ $count -le 9 ]
do
  ((count++))
  if [ $count -eq 4 ]
  then
    continue  # Skip the current iteration when count is 4
  fi
  echo "Count: $count"
done
Explanation:
This while loop runs until count reaches 9.

When count equals 4, the continue statement is triggered, skipping the echo command for that iteration and jumping to the next one.

As a result, 4 will not be printed.

