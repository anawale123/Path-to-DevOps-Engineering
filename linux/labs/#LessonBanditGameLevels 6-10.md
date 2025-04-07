# Lesson: Bandit Game Levels 6-10

Levels 6-10 of the Bandit game continue to introduce new challenges that test your skills in navigating Linux systems. These levels involve searching for strings, decoding data, and filtering files based on specific characteristics. By completing these challenges, I have strengthened my ability to:

| **Objective**                                                       | **✔️** |
|--------------------------------------------------------------------|--------|
| Filter files by ownership, size, and content.                       | ✔️     |
| Search for specific strings or content within files.                | ✔️     |
| Decode base64 encoded files to extract sensitive data.              | ✔️     |
| Identify human-readable strings within files.                       | ✔️     |
| Use `grep`, `sort`, and `uniq` to manipulate file contents.         | ✔️     |

These skills are important for server administration, data analysis, and automation tasks in a DevOps or cybersecurity environment.

---

### Level 6 – Search for File Based on Ownership and Size  

**Question 6**:  
The password for the next level is stored somewhere on the server and has all of the following properties:  
- Owned by user bandit7  
- Owned by group bandit6  
- 33 bytes in size  

**Answer**: Similar to the previous question (Level 5), I used the `find` command to filter based on the provided criteria. The command was:  
`find / -group bandit6 -user bandit7 -size 33c`.  
This helped me filter out the relevant files and locate the one I had access to. I then used `cat` to display the password:  
**morbNTDkSW6jIlUc0ymOdMaLnOlFVAaj**.

---

### Level 7 – Search for String "Millionth" in `data.txt`  

**Question 7**:  
The password for the next level is stored in the file `data.txt` next to the word "millionth".  

**Answer**: In this question, I was given a file called `data.txt`. By using the `cat` command, I could view the contents of the file. As the question states, the password is located next to the word "millionth." To find this, I used the `grep` command to search for the word "millionth" inside the file:  
`grep 'millionth' ./data.txt`.  
This revealed the password:  
**dfwvzFQi4mU0wfNbFOe9RoWskMLg7eEc**.

---

### Level 8 – Find Unique Line in `data.txt`  

**Question 8**:  
The password for the next level is stored in the file `data.txt` and is the only line of text that occurs only once.  

**Answer**: To find the unique line, I used the `sort` command along with `uniq -u` to filter out duplicate lines. The command I used was:  
`sort data.txt | uniq -u`.  
The output revealed the password:  
**4CKMh1JI91bUIZZPXDqGanal4xvAg0JM**.

---

### Level 9 – Human-Readable String Preceded by `===` in `data.txt`  

**Question 9**:  
The password for the next level is stored in the file `data.txt` in one of the few human-readable strings, preceded by several ‘=’ characters.  

**Answer**: I used the `strings` command to extract human-readable text from the file, and then piped the output to `grep` to find the strings preceded by `===`. The command was:  
`strings data.txt | grep '==='`.  
This revealed the password:  
**FGUW5ilLVJrxX9kMYMmlN4MgbpfMiqey**.

---

### Level 10 – Decode Base64 Data in `data.txt`  

**Question 10**:  
The password for the next level is stored in the file `data.txt`, which contains base64 encoded data.  

**Answer**: Base64 is an encoding scheme that uses 64 characters to represent binary data as text. In this case, the file contained base64-encoded data, so I used the `base64` command to decode it. The command I used was:  
`base64 -d data.txt`.  
This decoded the file and revealed the password:  
**dtR173fZKb0RRsDFSGsg2RWnpNVj3qRr**.

---

