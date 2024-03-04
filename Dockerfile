FROM golang:1.22.0-alpine3.19


WORKDIR /home
COPY  ./pkg /home

RUN cd /home &&  go build -o library

CMD ["/home/library"]
