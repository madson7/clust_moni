#!/bin/bash

curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

systemctl start docker
systemctl enable docker
