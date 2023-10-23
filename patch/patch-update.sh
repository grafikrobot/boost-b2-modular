#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
echo "+++++" `pwd`

git pull
git submodule foreach git switch develop
git submodule foreach git reset --hard
git submodule foreach git pull -r
./patch/patch-apply.sh

cd "${rootdir}"
echo "+++++" `pwd`
