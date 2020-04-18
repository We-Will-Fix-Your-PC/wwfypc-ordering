#!/usr/bin/env bash

VERSION=$(sentry-cli releases propose-version || exit)

cd unlocking/react/order_widget || exit
yarn webpack --config webpack.prod.js || exit
cd ../../..

docker build -t "theenbyperor/wwfypc-ordering:$VERSION" . || exit
docker push "theenbyperor/wwfypc-ordering:$VERSION" || exit

sentry-cli releases --org we-will-fix-your-pc new -p ordering $VERSION || exit
sentry-cli releases --org we-will-fix-your-pc set-commits --auto $VERSION
