#!/usr/bin/env zsh
#
# start.zsh

cd api
nohup nodemon app.js &
cd ../websocket
nohup nodemon app.js &
cd ../web
nohup nodemon app.js &




