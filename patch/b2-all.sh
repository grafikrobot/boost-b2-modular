#!/bin/bash

set -e

failed_submods=
cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
pwd
cd "${rootdir}/libs"
submods=`ls -1`
for submod in ${submods} ; do
    cd "${rootdir}/libs/${submod}"
    d=`pwd`
    echo "============================== ${d}"
    if test -e "build.jam" ; then
        set +e
        b2 all define=BOOST_DISABLE_PRAGMA_MESSAGE=1 cxxstd=latest -j10 -d0 -p1 "--build-dir=${rootdir}/.build"
        if test $? -ne 0 ; then
            failed_submods="${failed_submods} ${submod}"
        fi
        set -e
    fi
done
cd "${rootdir}"
pwd
for submod in ${failed_submods} ; do
    echo "============================== FAILED: ${submod}"
done
