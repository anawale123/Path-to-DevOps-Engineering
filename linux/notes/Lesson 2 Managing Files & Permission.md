Lesson 2: Managing Files & Permissions 

File Management Commands

cp
Copies files or directories
cp source.txt destination.txt
cp -r folder1/ folder2/ = copies folders recursively

mv
Moves or renames files and directories
mv oldname.txt newname.txt = rename
mv file.txt /path/to/folder/ = move file

rm
Deletes files or directories
rm file.txt = delete file
rm -r foldername = delete folder and contents
rm -f file.txt = force delete (no prompt)

touch
Creates an empty file
touch newfile.txt

File Permission Commands

chmod
Changes file permissions
chmod 755 script.sh
(7 = read+write+execute, 5 = read+execute)

chown
Changes file owner
chown user:group file.txt

Notes

Use ls -l to check current file permissions and ownership

Be careful with rm -r and rm -f (no undo)

chmod uses numbers:
7 = read+write+execute
6 = read+write
5 = read+execute
4 = read
0 = no permissions

