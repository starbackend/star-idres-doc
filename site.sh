#!/bin/bash

rm -rf artifacts

git clone -b gh-pages git@github.com:starbackend/star-idres-doc.git artifacts

rm -rf artifacts/*

make force
make all

cd artifacts
git add -A .
git commit -m docs
git push
