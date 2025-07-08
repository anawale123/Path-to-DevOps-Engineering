Lesson 1: Introduction to Bash Scripting
Bash scripting is a command-line automation tool used to execute tasks and manage system commands. While it follows logical structures (such as conditions, loops, and functions), it's designed mainly for automating system processes rather than working with complex data structures like objects, which is where languages like Python or Java.

Bash is perfect for running commands, handling files, automating tasks, and interacting with the system. However, it is not intended for advanced data manipulation or calculations.

Writing a Simple Bash Script
Create the script file:

To begin writing a Bash script, you need to create a script file. You can do this by running the following command:



vi my-first-script.sh
This will open the vi text editor.

Use the Shebang:

At the top of the script, add the shebang #!/bin/bash. This tells the system to interpret the script using Bash.


#!/bin/bash
Write the script:

To create a simple "Hello, World!" script, use the echo command. In Bash, echo prints output to the terminal, similar to console.log() in JavaScript:


echo "Hello, World!"
Save and exit:

After writing the script, press Esc and then type :wq! to save and exit the editor.

Make the script executable:

To run the script, first make it executable by running:


chmod +x my-first-script.sh
Check if it's executable:

You can confirm that the script is executable by running the ls -l command. The output should show something like:


-rwxr-xr-x
Run the script:

To execute the script, you can use the following command:


./my-first-script.sh
Alternatively, you can use the sh command:


sh my-first-script.sh