Lesson 4: Parameters in Bash
In Bash, parameters are used to store values that are passed to a script or function. Think of parameters as placeholders for values that are provided when running the script. These values are passed from the command line and can be accessed within the script.

To create parameters, we define them in the script file. For example, you can define parameters like this:


#!/bin/bash

# Print each parameter passed to the script
echo "parameter 1: $1"
echo "parameter 2: $2"
echo "parameter 3: $3"

# Print all parameters at once
echo "All parameters: $@"
Passing parameters from the command line
When running the script, you pass values to the script as arguments. These values are then assigned to the parameters defined in the script. For example, running the script with the following command:


bash script.sh Hello World 42
This will pass three arguments ("Hello", "World", and "42") to the script, and the output will be:


parameter 1: Hello
parameter 2: World
parameter 3: 42
All parameters: Hello World 42
$1, $2, $3, etc., represent the individual parameters.

$@ represents all the parameters passed to the script at once.

Summary:
Parameters allow you to pass values into a script or function.

The parameters are accessed using $1, $2, $3, etc.

The special variable $@ is used to access all parameters at once.