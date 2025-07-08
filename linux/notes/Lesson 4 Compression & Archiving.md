Lesson 4: Compression & Archiving

tar
Archives multiple files into a single file
tar -cvf archive.tar file1 file2 = create tar archive
tar -xvf archive.tar = extract contents
tar -tvf archive.tar = view contents

gzip
Compresses a single file (replaces original with .gz file)
gzip file.txt = creates file.txt.gz
gunzip file.txt.gz = decompress

tar with gzip
Combines archiving and compression
tar -czvf archive.tar.gz folder/ = create compressed archive
tar -xzvf archive.tar.gz = extract compressed archive

zip
Compresses files into a .zip archive
zip archive.zip file1 file2 = create zip
unzip archive.zip = extract files

Notes

c = create

x = extract

v = verbose (shows progress)

f = filename

z = use gzip compression (with tar)

gzip works on individual files

tar is used for grouping, often with gzip

