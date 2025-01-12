#!/usr/bin/env bash

git clone https://github.com/jackyzha0/quartz.git --depth 1
cd quartz/
npm ci
npx quartz create -X new -l shortest
mv -r ../notes/* content/
npx quartz build
