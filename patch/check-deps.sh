#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`
cd "${patchdir}/libs"
submods=`ls -1 | sort`
for submod in ${submods} ; do
    cd "${rootdir}/libs/${submod}"
    d=`pwd`
    if test -e "build.jam" ; then
        echo "======== ${submod}"
        set +e
        deps=`grep -E -o "<(source|use)>/boost/([a-z_]+)" build.jam`
        deps=`echo "${deps}" | grep -E -o "([a-z_]+)$" -`
        deps1=$(mktemp "${TMPDIR:-/tmp/}XXXXXXXXXX")
        for dep in ${deps} ; do
            echo ${dep} >> "${deps1}"
        done
        sort "${deps1}" > "${deps1}.sorted"
        deps=`grep -E -o "id='${submod}'.*</p>" "${patchdir}/deps.html"`
        deps=`echo "${deps}" | grep -E -o "[>)] [a-z][^<]+" - | grep -E -o "[a-z][a-z_~ ]+" -`
        deps2=$(mktemp "${TMPDIR:-/tmp/}XXXXXXXXXX")
        for dep in ${deps} ; do
            echo ${dep} >> "${deps2}"
        done
        sort "${deps2}" > "${deps2}.sorted"
        diff -a -w -U 20 "${deps1}" "${deps2}"
        rm -f "${deps1}*" "${deps2}*"
        set -e
    fi
done
cd "${rootdir}"
