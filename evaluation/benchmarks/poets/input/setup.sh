#!/bin/bash


if [[ "$1" == "-c" ]]; then
    rm -f genesis pg.tar.xz exodus pg/
    exit
fi

# FIXME: when compression is ready, apply to all PG books
# decompression takes about 10 minutes
# if [ ! -e ./pg ]; then
#   wget ndr.md/data/pg.tar.xz 
#   if [ $? -ne 0 ]; then
#     echo 'Cannot find pg.tar.xz -- please contact the pash developers'
#     exit 1
#   fi
#  tar -xJ -f pg.tar.xz
#   if [ $? -ne 0 ]; then
#     echo 'Cannot extract pg.tar.xz -- please contact the pash developers'
#     exit 1
#   fi
# fi

if [ ! -f ./genesis ]; then
  curl -sf http://www.gutenberg.org/cache/epub/8001/pg8001.txt > genesis
fi 

if [ ! -f ./exodus ]; then
  curl -sf http://www.gutenberg.org/cache/epub/8001/pg8001.txt > exodus
fi
