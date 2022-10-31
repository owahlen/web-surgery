#!/bin/bash

docker run \
  --rm \
  --name openresty \
  -v $PWD/nginx.conf:/usr/local/openresty/nginx/conf/nginx.conf:ro \
  -v $PWD/html:/usr/local/openresty/nginx/html:ro \
  -p 8081:80 \
  openresty/openresty:alpine
