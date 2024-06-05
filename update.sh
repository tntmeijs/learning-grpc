### ################################################################## ###
###                                                                    ###
### This script ensures the services' Protobuf files are kept in sync. ###
###                                                                    ###
### Every time a .proto file in the /proto directory has been updated, ###
### simply run this script to copy the data to the services that need  ###
### the file.                                                          ###
###                                                                    ###
### ################################################################## ###

#!/usr/bin/env bash

rsync -a --delete proto java-service/app/src/main
