FROM golang:1.18-alpine3.14

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

ENV REQUEST_ORIGIN="http://localhost:5000"

CMD ["./server"]
