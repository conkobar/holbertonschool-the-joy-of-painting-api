#!/usr/bin/env bash
# script to start bob ross server
./cut.sh
./dates.sh
sudo cat joy.sql | mysql -h127.0.0.1 -ubuzz -ppassword --local-infile=1
