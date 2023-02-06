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
    cd "${rootdir}/libs/${submod}"
    pwd
    if test -s "${patchdir}/libs/${submod}/patch.diff" ; then
        patch -uN -p1 "--input=${patchdir}/libs/${submod}/patch.diff"
    fi
    if test -s "${patchdir}/libs/${submod}/build.jam" ; then
        ln -s "${patchdir}/libs/${submod}/build.jam" build.jam
    fi
done
cd "${rootdir}"
pwd
