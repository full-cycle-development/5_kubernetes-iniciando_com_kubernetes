FROM golang:1.21

WORKDIR /go/src/app

COPY . .

RUN apt-get update && apt-get install -y iputils-ping

RUN go build -o server .

CMD [ "./server"]



