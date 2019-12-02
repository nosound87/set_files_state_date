#!/bin/bash


MAIN_DIR=$1
ARRAY_DATE=()
ARRAY_NAME=()

for i in $MAIN_DIR;
do
        DATE=$(ls -1 $i | awk -F'-' '{print $2 $3 $4 $5 $6}' | awk -F. '{print $1".00"}')
        FILE_NAME=$(ls -1 $i | awk '{print $NF}')
done

for d in $DATE; do ARRAY_DATE+=($d); done
for f in $FILE_NAME; do ARRAY_NAME+=($f); done


cd $MAIN_DIR
for ((i=0;i<${#ARRAY_DATE[@]};i++))
do
        /usr/bin/touch -a -m -t  ${ARRAY_DATE[i]} ${ARRAY_NAME[i]}
done

exit 0
