FROM golang:1.18-alpine3.14 as build-stage

WORKDIR /app

COPY . .

RUN go build


FROM scratch

EXPOSE 8080

ENV REQUEST_ORIGIN="http://localhost:5000"

COPY --from=build-stage /app/server/ /server
COPY --from=build-stage /lib /lib

CMD ["./server"]