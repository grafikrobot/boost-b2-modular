#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
echo "*****" `pwd`
cd "${rootdir}/libs"
submods=`ls -1`
for submod in ${submods} ; do
    ${patchdir}/patch-gen-1.sh ${submod}
done
cd "${rootdir}"
echo "*****" `pwd`
