#!/bin/bash

dirs=`ls -1`
for d in ${dirs} ; do
    mkdir ../patch/libs/${d}
done
