#!/bin/bash

# A Shell Script to Check and Print everything before testing...
echo "Hi, I'm a nice shell script to run the 42 checks for a repository faster.\n"
# Thanks to nboisde
echo "Starting Process"
sleep 1
echo "Putting everything through the norminette"
norminette -R CheckForbiddenSourceHeader ./ex*/*.c
sleep 2
echo "Compiling"
sleep 0.1
echo "."
sleep 0.5
gcc -Wall -Werror -Wextra -c ./ex*/*.c
find .*/*.o
sleep 1
cat ./ex*/*.c
find ./ex*/*.c > tmp.c
awk '{print "#include \""$0"\""}' tmp.c >> tmp.c
cat tmp.c | grep "^#" > main.c
echo "\nint main(void)\n{\n}" >> main.c
echo "main.c for tests -------------------\n"
cat main.c
rm tmp.c
rm ./*.o
ls -la
