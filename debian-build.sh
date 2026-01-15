#!/bin/bash

set -e

apt-get update
apt-get source nginx-light
tar xvf nginx_*.debian.tar.xz

cd nginx-*/
./configure --add-dynamic-module=/opt/nginx-dogstatsd/
make modules

cp objs/ngx_http_dogstatsd_module.so /opt/nginx-dogstatsd/
