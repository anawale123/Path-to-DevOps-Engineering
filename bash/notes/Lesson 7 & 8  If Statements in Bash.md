Lesson 7 & 8 : If Statements in Bash
In Bash scripting, the syntax for an if statement is straightforward. It begins with the if keyword, followed by the condition being evaluated. If the condition is true, the code block inside the then part will be executed, and the statement ends with fi.

Here's the basic structure:


if condition
then
  # Code to be executed here
fi
Comparison Operators in If Statements:
In Bash, conditions are often formed using comparison operators. Here are some common comparison operators used in if statements:

-eq: Equal to

-ne: Not equal to

-lt: Less than

-gt: Greater than

-le: Less than or equal to

-ge: Greater than or equal to

Implementing Comparison Operators in Bash Script:
Let's take a look at how we can use these operators in a Bash script.


age=25

if [ $age -gt 18 ]
then
  echo "You're an adult"
fi
In this example, the script checks if the age is greater than 18 using the -gt (greater than) operator. If the condition is true, it will print "You're an adult."

Combining Multiple Conditions:
You can also combine multiple conditions using logical operators like && (AND) and || (OR).


grade=9
age=24

if [ $age -lt 25 ] && [ $grade -gt 95 ]
then
  echo "You are eligible to enroll"
fi
In this case, both conditions need to be true for the message "You are eligible to enroll" to be printed. Since the age condition is true but the grade condition is not (the grade is less than 95), the output will be empty.

If you want to handle cases where the condition is not met, you can use an else statement, which will be covered in the next lesson.

Comparing Strings in If Statements:
You can also use if statements to compare strings. Here’s an example:


name="alice"
age=18

if [ $name == "alice" ] && [ $age -eq 25 ]
then
  echo "Welcome back, Alice"
fi
In this case, the script checks if both the name is "alice" and the age is 25. Since the age condition is false (age is 18), the code inside the if block will not be executed.

