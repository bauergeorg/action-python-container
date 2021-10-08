#!/bin/sh -l

echo "--------- Show version information of docker container ---------"
cat /etc/os-release
python3 --version
echo "--------- Run at docker container ---------"
python3 main.py