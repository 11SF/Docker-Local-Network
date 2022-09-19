FROM golang:1.18.3-alpine

COPY . /app
WORKDIR /app

RUN apk add build-base
RUN go mod download


EXPOSE 1323

# RUN go run server.go

RUN go build -o /app_build
CMD [ "/app_build" ]