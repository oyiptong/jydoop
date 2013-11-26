#!/bin/bash
make hadoop ARGS="scripts/userprofile.py $1.tmp output_hdfs"
sort -k1,1 $1.tmp > $1
rm $1.tmp
