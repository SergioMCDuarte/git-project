#!/usr/bin/env bash

n_files=$(ls | wc -l)
correct_answer=false

function eval_nfiles {
    if [[ $2 -eq $1 ]]; then
        echo "Congratulations, your are correct!"
        let correct_answer=true
    elif [[ $2 -gt $1 ]]; then   
        echo "Too high!"
    elif [[ $2 -lt $1 ]]; then
        echo "Too low!"
    fi
}

while [[ $correct_answer = false ]]; do
    
    echo "Guess the number of files in the current directory: "
    
    read response
    
    eval_nfiles $n_files $response
done