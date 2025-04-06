Lesson 5: Arithmetic Expansion in Bash
Bash allows you to perform arithmetic operations using variables. It's simple to store numbers in variables and then perform calculations like addition, subtraction, multiplication, and division. Here's how you can work with arithmetic operations in Bash:

1. Storing numbers in variables
To perform arithmetic operations, first, define variables to store your numbers:


#!/bin/bash

# Store numbers in variables
num1=10
num2=5
2. Performing arithmetic operations
You can perform arithmetic operations such as addition, subtraction, multiplication, and division by using these variables. The syntax for basic arithmetic is (( )).

Addition:


result=$((num1 + num2))
echo "Addition: $result"
Output:


Addition: 15
Subtraction:


result=$((num1 - num2))
echo "Subtraction: $result"
Output:


Subtraction: 5
Multiplication:


result=$((num1 * num2))
echo "Multiplication: $result"
Output:


Multiplication: 50
Division:

For division, keep in mind that Bash does not support floating point (decimal) arithmetic directly. You can only perform integer division unless you handle decimals manually or use a different tool like bc (a calculator utility).


result=$((num1 / num2))
echo "Division: $result"
Output:


Division: 2
3. Handling decimal values (for division)
If you need to handle division with decimals (floating point), you can use the bc command, which supports floating-point arithmetic:

result=$(echo "scale=2; $num1 / $num2" | bc)
echo "Division with decimal: $result"
Output:


Division with decimal: 2.00
scale=2 specifies the number of decimal places to keep.

Summary:
Arithmetic operations in Bash use (( )) for integer calculations.

To handle decimal points, use bc for floating point arithmetic.

Basic operations you can perform are addition +, subtraction -, multiplication *, and division /.