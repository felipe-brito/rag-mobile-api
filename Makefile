BINARY_NAME=rag-mobile-api

install:
	go env -w GOPROXY=https://proxy.golang.org
	go env -w CGO_ENABLED='1'
	go env -w GOPRIVATE="github.com"
	go env -w GO111MODULE='on'
	go env -w GOBIN=${GOPATH}/bin
	go mod download -x
	go mod tidy
	go install github.com/vektra/mockery/v2@latest

gen-mock:
	go install github.com/vektra/mockery/v2@latest
	go generate ./...

test: gen-mock
	go test ./...

dep:
	go get -d -u ./...
	go mod download -x

dock-compose-up:
	docker compose -f ./resources/docker/docker-compose.yml up -d

dock-compose-down:
	docker compose -f ./resources/docker/docker-compose.yml down

doc-swag:
	swag init --parseDependency --parseInternal --parseDepth 1 --output internal/http/swagger/docs --generalInfo cmd/rag-mobile-api/main.go

build: doc-swag
	go build -race -o bin/${BINARY_NAME} -ldfags="-s -w" ./cmd/rag-mobile-api