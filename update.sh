#!/usr/bin/env bash

### ################################################################## ###
###                                                                    ###
### This script ensures the services' Protobuf files are kept in sync. ###
###                                                                    ###
### Every time a .proto file in the /proto directory has been updated, ###
### simply run this script to copy the data to the services that need  ###
### the file.                                                          ###
###                                                                    ###
### ################################################################## ###

# The Java service uses a Gradle plugin to automatically generate code from Protobuf files
# Simply copying the file into the correct directory suffices
rsync -a --delete proto ./java-service/app/src/main

# In the Python service, Protobuf files need to be generated manually
rm -rf ./python-service/proto
mkdir -p ./python-service/proto
python3 -m grpc_tools.protoc\
    -Iproto/dev/tahar=./proto\
    --python_out=./python-service\
    --grpc_python_out=./python-service\
    ./proto/*.proto
