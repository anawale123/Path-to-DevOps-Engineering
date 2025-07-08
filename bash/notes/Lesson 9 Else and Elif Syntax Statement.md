Lesson 9: Else and Elif Syntax Statements
In Bash scripting, the else statement is used when the if statement is false. It does the opposite of the if statement. If the if condition is true, the else condition will not run, but if the if condition is false, then the else statement runs.

Basic else Structure:
Here’s how the else statement works:

grade=15

if [ $age -gt 10 ]
then
  echo "You passed! Well done!"
  # Code block if the condition is true
else
  echo "Unfortunately, you didn't pass."
  # Code block if the condition is false
fi
In this example:

If age is greater than 10, it prints "You passed! Well done!".

If age is 10 or less, it prints "Unfortunately, you didn't pass."

Using elif:
elif (else if) is used when you want to add more conditions. It allows you to add another condition to check after the initial if. If the if statement is false, it moves to the elif and checks that condition.

Here’s an example:


score=85

if [ $score -ge 90 ]
then
  echo "Excellent, you did well!"
elif [ $score -ge 80 ]
then
  echo "Great effort!"
else
  echo "Better luck next time."
fi
Code Breakdown:
First, it checks if score is greater than or equal to 90. If true, it prints "Excellent, you did well!".

If the first condition is false, it checks the elif condition. If score is greater than or equal to 80 (but less than 90), it prints "Great effort!".

If neither condition is true, the else part runs and prints "Better luck next time."

