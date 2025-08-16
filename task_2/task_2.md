# DevOps Roadmap - 2025 - Task 2 

## Topic : File Permission Task

## Task Description
1. Create a file with .txt extension (/home/demo.txt). Change the permission set of that file, so that any user can read it, group can read/write & owner can read/write/execute it.

### TechStack Used: 
Linux Terminal, Bash Script
 
### Commands covered : 
1. chmod
2. touch
3. cd
4. vi

### Steps Covered:
1. File creation - **sudo touch demo.txt**
2. Verification of owner Details - **ls -l** 
3. Since all files created in home belongs to root user so changing owner to user - **sudo chown hariharan:hariharan /home/demo.txt** (user:group)
4. Read - 4, Write - 2, Execute - 1, so Owner gets 7, Group USers gets 6 and other users get 4 - **764** - **sudo chmod 764 /home/demo.txt** 
5. Switched between users of same group and other groups and verified the permission applied
   i.  *sudo -u hariharan bash -c 'echo "file owner write" >> /home/demo.txt'*
   ii. *sudo -u hari_1 bash -c 'echo "group member hari_1 write" >> /home/demo.txt'*
  iii. *sudo -u hari_1 bash -c 'echo "group member suji_1 write with exec operation" >> /home/demo.txt'*   
