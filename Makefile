build:
	@go build -o bin/pricefetcher

run: build
	@./bin/pricefetcher

proto:
	@protoc --go_out=plugins=grpc:. ./**/*.proto

.PHONY: proto