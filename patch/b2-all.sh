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
    d=`pwd`
    echo "============================== ${d}"
    if test -e "build.jam" ; then
        b2 libs
        if test -d "test" ; then
            set +e
            b2 test
            set -e
        fi
    fi
done
cd "${rootdir}"
pwd
