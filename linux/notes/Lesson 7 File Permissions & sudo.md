Lesson 7: File Permissions & sudo

File Permissions

ls -l
Displays file permissions and ownership
Example output:
-rwxr-xr-x 1 user1 group1 1234 Jan 1 12:00 file.txt

rwx = read, write, execute permissions

First character: type of file (- for file, d for directory)

Next three characters: owner's permissions (rwx = full permissions)

Next three characters: group’s permissions

Last three characters: others' permissions

chmod
Changes file permissions
chmod 755 file.txt
(7 = read, write, execute; 5 = read, execute; 5 = read, execute)

Use chmod to set different permissions for owner, group, and others

r = read (4)

w = write (2)

x = execute (1)
Example: chmod 644 file.txt sets read/write for owner, read-only for group and others.

chown
Changes file owner and group
chown user:group file.txt
Example: chown user1:group1 file.txt

sudo
Executes commands with root (administrator) privileges
sudo [command]
Example: sudo apt-get update
You’ll be prompted to enter your password to execute commands with elevated permissions.

Always be cautious when using sudo, as it gives full control over the system

Common use cases include installing software, changing system files, or modifying file ownership

Notes

chmod modifies file access permissions

chown changes file ownership

Use sudo when you need elevated privileges (root access)

Be careful with sudo — it can change or delete system-critical files if misused

