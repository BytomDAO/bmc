block_height=23456

CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -ldflags "-X google.golang.org/protobuf/reflect/protoregistry.conflictPolicy=warn" -o bmc_23456 ./cmd/geth/main.go
