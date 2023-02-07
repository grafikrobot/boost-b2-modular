#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
pwd

git pull
git submodule foreach git switch develop
git submodule foreach git reset --hard
git submodule foreach git pull
./patch/patch-apply.sh

cd "${rootdir}"
pwd
