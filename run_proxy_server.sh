#!/bin/bash

docker run -it --name proxy_server -p 80:80 --link api -d proxy_server_img
