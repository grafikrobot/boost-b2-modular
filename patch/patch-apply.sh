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
    if test -d "${rootdir}/libs/${submod}/example" ; then
        cd "${rootdir}/libs/${submod}/example"
        if test -s "${patchdir}/libs/${submod}/example/Jamfile.v2" ; then
            ln -f -s "${patchdir}/libs/${submod}/example/Jamfile.v2" Jamfile.v2
        fi
    fi
done
rm -f "${rootdir}/libs/algorithm/Jamfile"
rm -f "${rootdir}/libs/concept_check/Jamfile"
rm -f "${rootdir}/libs/container/Jamfile"
rm -f "${rootdir}/libs/date_time/Jamfile"
rm -f "${rootdir}/libs/dynamic_bitset/Jamfile"
rm -f "${rootdir}/libs/format/Jamfile"
rm -f "${rootdir}/libs/gil/Jamfile"
rm -f "${rootdir}/libs/interval/Jamfile"
rm -f "${rootdir}/libs/interprocess/Jamfile"
rm -f "${rootdir}/libs/intrusive/Jamfile"
rm -f "${rootdir}/libs/json/Jamfile"
rm -f "${rootdir}/libs/logic/Jamfile"
rm -f "${rootdir}/libs/move/Jamfile"
rm -f "${rootdir}/libs/mpl/Jamfile"
rm -f "${rootdir}/libs/pool/Jamfile"
rm -f "${rootdir}/libs/prorgam_options/Jamfile"
rm -f "${rootdir}/libs/ptr_container/Jamfile"
rm -f "${rootdir}/libs/rational/Jamfile"
rm -f "${rootdir}/libs/safe_numerics/Jamfile.v2"
rm -f "${rootdir}/libs/signals2/Jamfile"
rm -f "${rootdir}/libs/sort/Jamfile.v2"
rm -f "${rootdir}/libs/spirit/Jamfile"
rm -f "${rootdir}/libs/static_string/Jamfile"
rm -f "${rootdir}/libs/test/Jamfile"
rm -f "${rootdir}/libs/url/Jamfile.v2"
cd "${rootdir}"
pwd
