# Lesson: Bandit Game Levels 0-5 (Linux Basics)

Levels 0-5 of the Bandit game introduce essential Linux fundamentals that form the foundation for navigating and managing a Linux-based system. These levels focus on basic command-line operations, file manipulation, hidden and special files, and searching for specific files based on attributes. By completing these challenges, I have strengthened my ability to:

| **Objective**                                                   | **✔️** |
|------------------------------------------------------------------|--------|
| Establish secure remote connections using SSH.                   | ✔️     |
| Navigate the Linux filesystem efficiently.                       | ✔️     |
| Read files with unconventional names, hidden files, and files with spaces. | ✔️     |
| Use commands like `ls`, `cd`, `cat`, `file`, and `find` to locate and read files. | ✔️     |
| Filter files based on properties like ownership, size, and permissions. | ✔️     |

These foundational skills are critical for working in a DevOps environment, where managing servers, troubleshooting, and automating tasks require a strong grasp of the Linux command line.

---

### Level 0 – SSH Access  
**Question**: The goal of this level is for you to log into the game using SSH. The host to which you need to connect is bandit.labs.overthewire.org, on port 2220. The username is bandit0 and the password is bandit0. Once logged in, go to the Level 1 page to find out how to beat Level 1.

**Answer**: In Level 0, we are introduced to the fundamentals of remote access using SSH (Secure Shell). By executing the command  
`ssh bandit0@bandit.labs.overthewire.org -p 2220`,  
we establish a secure connection to the server. Upon entering the provided credentials, we successfully gain access to the environment, setting the stage for the challenges ahead. This level lays the groundwork for navigating and interacting with remote systems efficiently.

---

### Level 1 – The Mysterious File  
**Question**: The password for the next level is stored in a file called `-` located in the home directory.

**Answer**: To find the password for this level, I first use the `ls` command to list all files in the directory. The output reveals a file named `-`, which can be tricky to access due to its name. To read its contents, I use  
`cat ./-`,  
specifying the relative path with `./` to avoid conflicts with command options. This successfully displays the password:  
**263JGJPfgU6LtdEvgfWU1XP5yac29mFx.**

---

### Level 2 – File with Spaces in Its Name  
**Question**: The password for the next level is stored in a file called spaces in this filename located in the home directory.

**Answer**: To access the password, I first used the `ls` command to list the files. The output showed a file with spaces in its name. To properly access this file, I used backslashes (`\`) before each space, like this:  
`cat spaces\ in\ this\ filename`.  
This allowed me to read the file and retrieve the password:  
**MNk8KNH3Usiio41PRUEoDFPqfxLPlSmx.**

---

### Level 3 – Hidden File in the `inhere` Directory  
**Question**: The password for the next level is stored in a hidden file in the `inhere` directory.

**Answer**: To retrieve the password, I first listed the available directories using `ls`, which revealed a folder named `inhere`. Navigating into it with `cd inhere`, I then executed `ls -al` to display all files, including hidden ones. This command uncovered a concealed file. Using  
`cat .Hiding-From-You`,  
I extracted the password needed to proceed to the next level.

---

### Level 4 – The Only Human-Readable File in `inhere`  
**Question**: The password for the next level is stored in the only human-readable file in the `inhere` directory. Tip: if your terminal is messed up, try the “reset” command.

**Answer**: To identify the only human-readable file in the directory, I initiated the process by running the `ls` command to list all directories. Upon discovering the `inhere` directory, I navigated into it with `cd inhere`. To determine the type of files present, I employed the `file ./-file*` command, which provided an output detailing each file's content type. I specifically focused on identifying a file marked as ASCII text, as this indicated it was human-readable. After pinpointing the relevant file, I used `cat 07` to retrieve the password, which was  
**4oQYVPkxZOOEOO5pTW81FB8j8lxXGUQw.**

---

### Level 5 – File Search Based on Multiple Criteria  
**Question**: The password for the next level is stored somewhere on the server and has all of the following properties:  
- Owned by user bandit7  
- Owned by group bandit6  
- 33 bytes in size  

**Answer**: To filter the files based on the given criteria, I first executed the `find` command:  
`find ./ -readable -size 1033c ! -executable`.  
This helped me narrow down my search and pinpoint the file `./maybehere07/.file2`. After locating the correct file, I used the `cat` command to inspect its contents, revealing the password:  
**HWasnPhtq9AVKe0dmk45nxy20cvUa6EG**. The process was straightforward, but it required attention to detail to ensure I was filtering the right files efficiently.

---
