FROM golang:1.20-alpine as builder

WORKDIR /app

COPY . .

RUN go mod download

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64
RUN go build -o /fiber-app

EXPOSE 3001

CMD ["/fiber-app"]