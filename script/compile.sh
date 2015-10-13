#!/bin/bash

SRC_DIR=$1
DST_DIR=$2

if [ $# -le 1 ]
then
  echo "Usage: ./compile.sh [src_dir] [dst_dir]"
  exit 1
fi

mkdir -p $DST_DIR

for PGM in $SRC_DIR/*.c
do
  name=`basename $PGM`.out
  echo "Compiling $name"

  gcc -o $DST_DIR/$name $PGM -m32 -g3 >& /dev/null

  if [[ $? -eq 1 ]]
  then
    echo "Compile Error: $PGM"
#    exit 1
  fi
done

