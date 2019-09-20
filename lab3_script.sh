#!/bin/bash
#Authors: Gerrett Pape
#Date: 9/20

#Problem 1
#Ask for a file and store it as fileName
echo "Please input a file name: "
read fileName
#Ask for a regex command and store it
echo "Please type in a regular expression"
read regex
#grep the command line arguements.
grep $1 $2
#grep the regex and the file name the user typed in.
grep $regex $fileName

#Print the number of phone numbers in regex_practice.txt
grep -c -E [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9] regex_practice.txt
#print the number of email adresses in regex_practice
grep -c -E [a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+ regex_practice.txt
#print the number of phone numbers that start with 303-
grep -o -E "303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" regex_practice.txt
#output all the emails that end in @geocities.com and save it to email_results
grep -o -E "[a-zA-Z0-9]+@geocities.com" ./regex_practice.txt > email_results.txt
