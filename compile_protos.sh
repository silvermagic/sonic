#!/bin/sh

set -euo pipefail

proto_imports=".:${GOPATH}/src"

# Java
protoc --proto_path=${GOPATH}/src --java_out=src/main/java ${GOPATH}/src/github.com/openconfig/ygot/proto/yext/yext.proto
protoc --proto_path=${GOPATH}/src --java_out=src/main/java ${GOPATH}/src/github.com/openconfig/ygot/proto/ywrapper/ywrapper.proto
protoc --proto_path=${GOPATH}/src -I=$proto_imports --java_out=src/main/java api/protobuf/openconfig/openconfig_acl_enums/openconfig_acl_enums.proto
protoc --proto_path=${GOPATH}/src -I=$proto_imports --java_out=src/main/java api/protobuf/openconfig/openconfig_interfaces/openconfig_interfaces.proto
protoc --proto_path=${GOPATH}/src -I=$proto_imports --java_out=src/main/java api/protobuf/openconfig/openconfig_acl/openconfig_acl.proto

# Go
protoc --proto_path=${GOPATH}/src -I=$proto_imports --go_out=. --go_opt=paths=source_relative api/protobuf/openconfig/openconfig_acl_enums/openconfig_acl_enums.proto
protoc --proto_path=${GOPATH}/src -I=$proto_imports --go_out=. --go_opt=paths=source_relative api/protobuf/openconfig/openconfig_interfaces/openconfig_interfaces.proto
protoc --proto_path=${GOPATH}/src -I=$proto_imports --go_out=. --go_opt=paths=source_relative api/protobuf/openconfig/openconfig_acl/openconfig_acl.proto
