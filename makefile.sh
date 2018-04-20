#!/bin/bash

date=$(date "+%m%d")
ID=$(<ID.txt)
writing_filename="kadai${date}-${ID}"
echo "${writing_filename}.txt"

for i in `seq 1 $2`
do
    filename="kadai$i"
    # echo $filename >> kadai.txt
    echo "課題$1-$i\n" >> ${writing_filename}.txt
    echo "ソースコード\n" >> ${writing_filename}.txt
    cat ${filename}.c >> ${writing_filename}.txt
    echo "\n実行結果\n" >> ${writing_filename}.txt
    bash exe.sh ${filename} ${writing_filename}.txt
    echo "\n" >> ${writing_filename}.txt
done
