package scripts

//go:generate go run ${GOPATH}/src/github.com/openconfig/ygot/proto_generator/protogenerator.go -base_import_path=github.com/silvermagic/sonic/api/protobuf -path=../api/yang/public/release/models:../api/yang/public/release/models/types:../api/yang/public/release/models/interfaces:../api/yang/public/third_party -output_dir=../api/protobuf -enum_package_name=openconfig_acl_enums -exclude_modules=ietf-interfaces ../api/yang/public/release/models/acl/openconfig-acl.yang

func init() {}