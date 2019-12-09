# set_files_state_date  
Simple script to change the ACCESS and MODIFY attributes of a file, based on the date in its name (example: filename-YYYY-MM-DD-HH-mm.gz)


### Usage
All you have to do is just run set_datefile.sh script with specific directory (containing files with date in name) as an argument:  
`$ ./set_datefile.sh some_dir`

### Example
```
$ ls -l some_dir/
total 0
-rw-r--r-- 1 root root 0 Dec  9 14:08 some_file1-2019-10-05-12-30.gz
-rw-r--r-- 1 root root 0 Dec  9 14:08 some_file-2019-03-20-13-30.gz
-rw-r--r-- 1 root root 0 Dec  9 14:08 some_file2-2019-07-16-09-20.gz
-rw-r--r-- 1 root root 0 Dec  9 14:08 some_file3-2018-05-13-17-26.gz
```
```
$ ./set_file.sh some_dir/
$ ls -l some_dir/
total 0
-rw-r--r-- 1 root root 0 Oct  5 12:30 some_file1-2019-10-05-12-30.gz
-rw-r--r-- 1 root root 0 Mar 20  2019 some_file-2019-03-20-13-30.gz
-rw-r--r-- 1 root root 0 Jul 16 09:20 some_file2-2019-07-16-09-20.gz
-rw-r--r-- 1 root root 0 May 13  2018 some_file3-2018-05-13-17-26.gz
```
