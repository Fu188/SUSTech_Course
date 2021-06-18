#! /bin/bash

IFS_OLD=$IFS
IFS=$'\t,\n'

echoFile(){
   echo $@ >> ${OUTPUT_FILE}
}

TARGET_DIR=$1
OUTPUT_FILE=$2
TARGET_DIR=$(cd ${TARGET_DIR}; pwd)
:>$OUTPUT_FILE

dir_num=0
file_num=0
cnt=0
queue_pwd=(${TARGET_DIR})
if [ ${TARGET_DIR} == "/" ]; then
   dir_queue=("")
else
   dir_queue=(${TARGET_DIR##*/})
fi


while [ ${cnt} != ${#dir_queue[@]} ]; do
   echoFile [${dir_queue[${cnt}]}]
   cur_dir=${queue_pwd[${cnt}]}
   for item in $(ls ${cur_dir}); do
     new_item=${cur_dir}/${item}
     echoFile ${new_item}
     if [ -d ${new_item} ]; then
        dir_num=`expr ${dir_num} + 1`
        dir_queue+=(${item})
        queue_pwd+=(${cur_dir}/${item})
     else
        file_num=`expr ${file_num} + 1`
     fi
   done
   cnt=`expr ${cnt} + 1`
   echoFile ""
done

echoFile [Directories Count]:${dir_num}
echoFile [Files Count]:${file_num}
