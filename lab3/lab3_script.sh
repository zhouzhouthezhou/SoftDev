#!/bin/bash
#Authors : Kyle Zhou
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

echo "Enter filename"
read filename

echo "Enter regex"
read regex

grep $regex $filename

echo "Number of phone numbers in regex_practice.txt"
grep -c -P "\d{3}-\d{3}-\d{4}" regex_practice.txt

echo "Number of emails in regex_practice.txt"
grep -c ".*@.*" regex_practice.txt

echo "List of 303 numbers in regex_practice.txt"
grep -P "303-\d{3}-\d{4}" regex_practice.txt


echo "Getting list of geocities.com emails"
grep ".*@geocities\.com" regex_practice.txt >> email_results.txt

