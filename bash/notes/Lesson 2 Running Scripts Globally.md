Lesson 2: Running Scripts Globally (Anywhere in the Terminal)

To run a script from anywhere, you need to move the script file to a directory that is included in your system's $PATH. This allows you to call the script from any location in the terminal, just by typing its name.

Move the script to /usr/local/bin:

First, move the current script greet.sh to the /usr/local/bin directory. This is a directory that is typically included in the system's $PATH, allowing scripts stored here to be run from anywhere.


sudo mv greet.sh /usr/local/bin/greet.sh
Make the file executable:

As with any script, you need to make it executable. Run the following command to grant execution permissions:


chmod +x /usr/local/bin/greet.sh
Run the script from anywhere:

Now that the script is in a directory included in the $PATH, you can run it from anywhere by simply typing its name:


greet
