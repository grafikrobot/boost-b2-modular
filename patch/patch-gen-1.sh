#!/bin/bash

set -e

cd `dirname ${0}`
patchdir=`pwd`
cd ..
rootdir=`pwd`

submod=`basename ${1}`
cd "${rootdir}/libs/${submod}"
echo ===== `pwd`
git diff -p "--output=${patchdir}/libs/${submod}/patch.diff" --diff-filter=AM

cd "${rootdir}"
