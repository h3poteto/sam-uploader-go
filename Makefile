.PHONY: deps clean build

deps:
	go get -u ./...

clean:
	rm -rf ./uploader/uploader

build:
	GOOS=linux GOARCH=amd64 go build -o uploader/uploader ./uploader
