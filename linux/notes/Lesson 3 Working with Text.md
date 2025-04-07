Lesson 3: Working with Text

Text Viewing & Output

cat
Displays contents of a file
cat file.txt

echo
Prints text to the terminal
echo "Hello World"
Can also write to files:
echo "line" >> file.txt

Text Searching

grep
Searches for patterns in text
grep "search_term" file.txt
grep -r "term" folder/ = recursive search in all files
grep -i = ignore case
grep -n = show line numbers

Text Editing (Stream)

sed
Stream editor for find & replace
sed 's/old/new/' file.txt = replaces first match per line
sed 's/old/new/g' file.txt = replaces all matches

awk
Pattern scanning and text processing
awk '{print $1}' file.txt = prints first column
awk -F ":" '{print $2}' file.txt = use custom delimiter

Text Sorting

sort
Sorts lines in text files
sort file.txt
sort -r = reverse order
sort -n = numerical sort
sort -u = unique lines only

Notes

Use pipe | to chain commands
Example: cat file.txt | grep "word"
Use redirection > to write to a file
Example: echo "text" > file.txt
Use >> to append instead of overwrite

