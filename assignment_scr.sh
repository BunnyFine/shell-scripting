#!/bin/bash
echo "Hi Sir/madam. Press 1 for sigup and 2 for login"
read num
    if [ $num -eq 1 ]
    then
    echo "Enter username"
    read user
    echo "Enter password"
    read pwd
    echo "$user $pwd" >> auth.txt
    echo "Relaunch script to login" 
    sleep 2

    else 
    echo "Username:"
    read user
    echo "Password:"
    read pwd
    file="auth.txt"
    auth="false"
    c="$user $pwd"
    while read line; do
        # echo "$line"
        if [ "$line" == "$c" ]
        then
            echo "You are welcome"
            auth="true"
            break
        fi
    done < $file 
    if [ "$auth" == "false" ]
    then
        echo "Wrong username or password"
    fi
    fi