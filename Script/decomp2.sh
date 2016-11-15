#! /bin/bash

liste=`ls $1`
cd $1
for ar in liste; do
 tar xzvf $ar`
done

