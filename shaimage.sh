#!/bin/bash

for f in *.$1
do
    mv $f "$(sha256sum $f | cut -d ' ' -f 1).$1"
done
