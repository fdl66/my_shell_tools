#!/bin/bash
if [ $# != 2 || $# !=3 ];then
    echo 'sw $1 $2,parameter error!'
    exit 1
fi
DIR=${1}
CONT=${2}
for file in `find ${DIR}`;do
    if [ -d $file ];then 
        continue
    elif [ `cat ${file}|grep ${CONT}|wc -l` -gt 0 ];then
        echo ${file}
        if [ $# -eq 3 ];then
            cat ${file} | grep ${CONT}
            echo ""
        fi
    fi
done

