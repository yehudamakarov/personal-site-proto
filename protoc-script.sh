# shellcheck disable=SC2046
#  because we want the output of find to be line split.

# for (client) typescript generation
#  --plugin="protoc-gen-ts=$(command -v protoc-gen-ts)" \
#  --js_out="import_style=commonjs,binary:packages/typescript" \
#  --ts_out="service=grpc-web:packages/typescript" \
protoc --proto_path=definitions \
  --go_opt=paths=source_relative \
  --go_out=packages/go \
  --go-grpc_opt=paths=source_relative \
  --go-grpc_out=packages/go \
  $(find . -iname "*.proto")


