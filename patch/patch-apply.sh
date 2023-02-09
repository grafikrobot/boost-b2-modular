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
        ln -f -s "${patchdir}/libs/${submod}/build.jam" build.jam
    fi
done
rm -f "${rootdir}/libs/concept_check/Jamfile"
rm -f "${rootdir}/libs/container/Jamfile"
rm -f "${rootdir}/libs/intrusive/Jamfile"
rm -f "${rootdir}/libs/json/Jamfile"
rm -f "${rootdir}/libs/move/Jamfile"
rm -f "${rootdir}/libs/mpl/Jamfile"
cd "${rootdir}"
pwd
