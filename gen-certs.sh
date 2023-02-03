#!/bin/bash

# script generating custom certificates with specified domain name
# ex: ./gen-certs.sh my.domain.name

mkdir -p ~/certs/$1/
cd ~/certs/$1/

openssl req -x509 \
            -sha256 -days 356 \
            -nodes \
            -newkey rsa:2048 \
            -subj "/CN="$1"/C=US/L=San Fransisco" \
            -keyout rootCA.key -out rootCA.crt
