- Run test with go (Docker: go 1.13)
docker run --rm -v $(pwd)/:/app/ -w /app golang:1.13 go run ./go/index.go

[補足]testingを使ったべんちまーくテスト
docker run --rm -v $(pwd)/:/app/ -w /app golang:1.13 go test -bench ./go -benchmem

- Run test with java (Docker: openjdk 11)
docker run --rm -v $(pwd)/:/app/ -w /app adoptopenjdk/openjdk11:latest javac ./java/IndexTest.java && \
docker run --rm -v $(pwd)/:/app/ -w /app adoptopenjdk/openjdk11:latest java -classpath ./java IndexTest

- Run test with python (Docker: python 3.8.1)
docker run --rm -v $(pwd)/:/app/ -w /app python:3.8.1-alpine3.11 python ./python/index.py

- Run test with node (Docker: node 13.6.0)
docker run --rm -v $(pwd)/:/app/ -w /app node:13.6.0-alpine3.10 node ./node/index.js

- Run test with php8 + jit (Docker: keinos/php8-jit:8.0.0-dev)
docker run --rm -v $(pwd)/:/app/ -w /app keinos/php8-jit php ./php/index.php

- Run test with php7 (Docker: php7.1.22)
docker run --rm -v $(pwd)/:/app/ -w /app php:7.1.22 php ./php/index.php
