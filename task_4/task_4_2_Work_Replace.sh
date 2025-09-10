#!/bin/bash
fileName=$1
sed -i '5,$ {/welcome/s/give/learning/g}' $fileName
cat $fileName
