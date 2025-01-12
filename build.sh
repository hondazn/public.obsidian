#!/usr/bin/env bash

git clone https://github.com/jackyzha0/quartz.git --depth 1
cd quartz/
npm ci
npx quartz create -X new -l shortest
find .. -mindepth 1 -maxdepth 1 -type d ! -name ".*" -exec mv {} content/ \;
npx quartz build
