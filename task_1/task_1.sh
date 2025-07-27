#!/bin/bash

# Task 1 Description:
# --------------------
# 1. Create a directory called ""my_folder"", navigate into it, and create a file named ""my_file.txt"" with some text. Then, create another file named ""another_file.txt"" with some text. Concatenate the content of ""another_file.txt"" to ""my_file.txt"" and display the updated content. Finally, list all files and directories in the current directory.
#
# 2. Create 20 files with .txt extensions and rename the first 5 files to .yml extension and Print the latest created top 5 files among the total no of files".

#Testing commands - Play area
#echo $SHELL
#ps -p $$

# Task folder creation
[ -d task_1 ] || mkdir task_1 && cd task_1
echo "######################### Navigated to task folder..✅ ###############################################"

# Dir Creation and File creation
[ -d my_folder ] || mkdir my_folder && cd my_folder
echo "######################## my_folder creation and navigation - ✅ ########################################"

# two .txt file creation and concatination operation
echo "file-1 : Contents." > my_file.txt
echo "file-2 : Contents - To be concatinated with file-1" > another_file.txt
cat another_file.txt >> my_file.txt
echo "--> my_file.txt Display : "
cat my_file.txt
echo "################# Two '.txt' file created, contents added and concatenated file-2 with file-1 - ✅ ########################"

# Listing the task folder.
echo "Listing all the contents in my_folder"
ls -lhart && cd ../

# Creating 20 files & changing the extension for 5 .txt files to .yml files
[ -d 1_files ] || mkdir 1_files && cd 1_files
for i in {1..20}; do
  touch "task_1_$i.txt"
done
echo "######################### Created 1-20 '.txt' files. - ✅ ####################"

for i in {1..5}; do
        mv task_1_$i.txt task_1_$i.yml
done

echo "################## Changed the '.yml' extention for first 5 '.txt' files. - ✅ ######################"

#listing the extention changed files alone
 ls -tr | head -n 5
echo "################## Listing last created 5 files. - ✅ ######################"
