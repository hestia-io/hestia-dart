#!/bin/bash

bin=`dirname $0`

cd ${bin}/../

protoc -Iprotos/ protos/navigation.proto \
  --dart_out=grpc:lib/src
