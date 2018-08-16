#!/bin/bash
MODULELIST=`grep path .gitmodules  | cut -d= -f2`

for MODULE in $MODULELIST; do
    echo Module: $MODULE
    cp $MODULE/README.md index/$MODULE.md
done