Lesson 5: Finding Files by User, Group, Size, and Type

find
Searches for files and directories using filters

Find by name
find /path -name filename.txt

Find by type
find /path -type f = find files
find /path -type d = find directories

Find by size
find /path -size 1033c = size in bytes (c = characters)
find /path -size +1M = larger than 1MB
find /path -size -500k = smaller than 500KB

Find by owner or group
find /path -user username
find /path -group groupname

Find by multiple filters
find / -type f -user user1 -group group1 -size 33c

Redirect errors
Add 2>/dev/null to ignore permission errors
Example:
find / -type f -size 33c 2>/dev/null

file
Checks the type of a file
file filename.txt
Useful for spotting text, binary, or special file types

ls -a
Lists hidden files (those starting with a dot)

Notes

Combine flags for specific searches

Use -exec to run a command on the results
Example: find . -name "*.log" -exec rm {} ;

Use man find for more options

