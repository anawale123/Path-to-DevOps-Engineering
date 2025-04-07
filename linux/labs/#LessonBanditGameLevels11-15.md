# Lesson: Bandit Game Levels 11-15

Levels 11-15 of the Bandit game continue to test your ability to work with encryption, compression, and secure communication. These levels focus on decoding rotated text, handling hex dumps, using SSH keys for secure login, and transferring data via SSL/TLS. By completing these challenges, I have further strengthened my skills in:

| **Objective**                                                       | **✔️** |
|--------------------------------------------------------------------|--------|
| Decrypt ROT13 encoded text.                                          | ✔️     |
| Reverse hex dumps and work with compressed files (gzip, bzip2, tar). | ✔️     |
| Use SSH keys for secure login.                                       | ✔️     |
| Transfer data to a specific port using netcat.                       | ✔️     |
| Work with SSL/TLS encryption to transfer data securely.              | ✔️     |

These skills are useful for cybersecurity tasks, file management, and secure communications in a server environment.

---

### Level 11 – Decrypt ROT13 Encoded Data  

**Question 11**:  
The password for the next level is stored in the file `data.txt`, where all lowercase (a-z) and uppercase (A-Z) letters have been rotated by 13 positions.  

**Answer**: To decrypt the ROT13 encoded text, I used the `tr` command with the `A-Za-z` range and substituted each letter with its 13th position counterpart. The command was:  
`cat data.txt | tr 'A-Za-z' 'N-ZA-Mn-za-m'`.  
This gave me the password:  
**7x16WNeHIi5YkIhWsfFIqoognUTyj9Q4**.

---

### Level 12 – Work with Compressed Hexdump  

**Question 12**:  
The password for the next level is stored in the file `data.txt`, which is a hexdump of a file that has been repeatedly compressed. For this level, it may be useful to create a directory under `/tmp` in which you can work. Use `mkdir` with a hard-to-guess directory name, or better, use the command `mktemp -d`. Then copy the data file using `cp`, and rename it using `mv` (read the manpages!).  

**Answer**: This question required several steps:
1. **Create a directory** for the work environment using:  
   `mkdir /tmp/some_unique_directory`
2. **Copy and rename** the file using:  
   `cp data.txt /tmp/some_unique_directory`  
   `mv data.txt /tmp/some_unique_directory/renamed_data.txt`
3. I reversed the hexdump using `xxd -r data.txt > data.bin`.  
4. I checked the file type using `file data.bin`, which indicated it was a compressed gzip file.
5. **Decompress the gzip file** using:  
   `gzip -d data.gz`.
6. I continued the decompression process, encountering different compression formats such as bzip2 and tar. After repeating the decompression steps until I reached the final file, the password was revealed.  
The password for this level was:  
**FO5dwFsc0cbaIiH0h8J2eUks2vdTDwAn**.

---

### Level 13 – Use SSH Key to Log In and Access Password  

**Question 13**:  
The password for the next level is stored in `/etc/bandit_pass/bandit14` and can only be read by user `bandit14`. For this level, you don’t get the next password, but you get a private SSH key that can be used to log into the next level. Note: localhost is a hostname that refers to the machine you are working on.  

**Answer**: To solve this, I needed to use the SSH key to log in as `bandit14`. The command to log in was:  
`ssh -i sshkey.private bandit14@localhost -p2220`.  
Once logged in, I used `cat` to view the password stored in `/etc/bandit_pass/bandit14`, which was:  
**MU4VWeTyJk8ROof1qqmcBPaLh7lDCPvS**.

---

### Level 14 – Submit Password to Port 30000 on localhost  

**Question 14**:  
The password for the next level can be retrieved by submitting the password of the current level to port 30000 on localhost.  

**Answer**: To transfer the password from the previous level to port 30000, I used the `nc` (netcat) command to send the password to the specified port. The command was:  
`cat /etc/bandit_pass/bandit14 | nc localhost 30000`.  
This transferred the password, and the password for this level was:  
**8xCjnmgoKbGLhHFAZlGE5Tmu4M2tKJQo**.

---

### Level 15 – Submit Password to Port 30001 on localhost Using SSL/TLS Encryption  

**Question 15**:  
The password for the next level can be retrieved by submitting the password of the current level to port 30001 on localhost using SSL/TLS encryption.  

**Answer**: To securely submit the password using SSL/TLS encryption, I used the `openssl` command with the `s_client` option. The command was:  
`cat /etc/bandit_pass/bandit15 | opens_
