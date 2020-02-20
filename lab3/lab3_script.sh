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
#look for 3 numbers and a - and 3 numbers and a - and 4 numbers with pcre
grep -c -P "\d{3}-\d{3}-\d{4}" regex_practice.txt

echo "Number of emails in regex_practice.txt"
#look for a charstring@charstring
grep -c "(.&^@)(.&^@)*@.*" regex_practice.txt

echo "List of 303 numbers in regex_practice.txt"
#look for 303- and 3 numbers and a - and 4 numbers with pcre
grep -P "303-\d{3}-\d{4}" regex_practice.txt


echo "Getting list of geocities.com emails"
#look for charstring@geocities.com and redirect output to text file
grep ".*@geocities\.com" regex_practice.txt >> email_results.txt

