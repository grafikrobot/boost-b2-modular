#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
pwd
cd "${rootdir}/libs"
jams=`ls -1 */build.jam`
for jam in ${jams} ; do
    cd `dirname ${rootdir}/libs/${jam}`
    pwd
    ln build.jam "${rootdir}/patch/libs/${jam}"
done
cd "${rootdir}"
pwd
