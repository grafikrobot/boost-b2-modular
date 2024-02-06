#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
echo "*****" `pwd`
cd "${patchdir}/libs"
submods=`ls -1`
for submod in ${submods} ; do
    cd "${rootdir}/libs/${submod}"
    # echo ===== `pwd`
    if ! test -s "${patchdir}/libs/${submod}/build.jam" ; then
        echo "MISSING ${submod}/build.jam"
    fi
done

cd "${rootdir}"
echo "*****" `pwd`
