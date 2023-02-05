#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
pwd
cd "${rootdir}/libs"
submods=`ls -1`
for submod in ${submods} ; do
    cd "${rootdir}/libs/${submod}"
    pwd
    git diff -p "--output=${patchdir}/libs/${submod}/patch.diff" --no-renames
done
cd "${rootdir}"
pwd
