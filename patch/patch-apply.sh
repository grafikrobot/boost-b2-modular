#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
pwd
cd "${patchdir}/libs"
submods=`ls -1`
for submod in ${submods} ; do
    if test -s "${patchdir}/libs/${submod}/patch.diff" ; then
        cd "${rootdir}/libs/${submod}"
        pwd
        patch -uN -p1 "--input=${patchdir}/libs/${submod}/patch.diff"
    fi
done
cd "${rootdir}"
pwd
