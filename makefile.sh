
#!/bin/bash

date=$(date "+%m%d")
ID=$(<ID.txt)
writing_filename="kadai${date}-${ID}"
echo "making ${writing_filename}.txt..."

for i in `seq 1 $2`
do
    filename="kadai$i"
    # echo $filename >> kadai.txt
    echo "課題$1-$i" >> ${writing_filename}.txt
    echo "ソースコード" >> ${writing_filename}.txt
    cat ${filename}.c >> ${writing_filename}.txt
    echo " " >> ${writing_filename}.txt
    echo "実行結果" >> ${writing_filename}.txt
    bash exe.sh ${filename} ${writing_filename}.txt
    echo " " >> ${writing_filename}.txt
done
