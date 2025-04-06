Lesson 3: Writing Variables & Storing Data in Variables 
In Bash scripting, variables are used to store data, such as strings, numbers, and arrays. Here’s how you can store different types of data in variables:

Storing Strings
To store a string in a variable, simply use the = sign. For example, to store the string "Hello World" in a variable, use:


greeting="Hello World"
Storing Numbers
To store a number in a variable, it’s almost the same as storing a string. For example, to store the number 43 in a variable, use:


count=43
Storing Arrays
To store multiple values in an array, you can do it like this:


array=(apple banana orange)
Printing Variables
To print the value stored in a variable, use the echo command with the variable name prefixed by a dollar sign $. For example:


echo $greeting  # Prints "Hello World"
echo $count     # Prints "43"
echo ${array[0]}  # Prints "apple"
