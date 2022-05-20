FROM golang:1.18

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && \
	go test ./...

ENV REQUEST_ORIGIN="http://localhost:5000"

CMD ["./server"]
