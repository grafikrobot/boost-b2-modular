#!/bin/bash

# git submodule add -b develop --name system ../../boostorg/system.git libs/system

while true ; do
    if read -r l_name ; then
        read -r l_path
        read -r l_url
        read -r l_frs
        read -r l_branch
        [[ $l_name =~ submodule..([a-z_0-9]+) ]]
        l_name=${BASH_REMATCH[1]}
        [[ $l_path =~ path...(.*) ]]
        l_path=${BASH_REMATCH[1]}
        [[ $l_url =~ url...(.*) ]]
        l_url=${BASH_REMATCH[1]}
        echo git submodule set-url -- ${l_path} https://github.com/grafikrobot/boostorg.${l_name}.git
        git submodule set-url -- ${l_path} https://github.com/grafikrobot/boostorg.${l_name}.git
        echo git submodule set-branch -b modular -- ${l_path}
        git submodule set-branch -b modular -- ${l_path}
    else
        break
    fi
done < .gitmodules
