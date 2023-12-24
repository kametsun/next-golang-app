# base image
FROM golang:1.21.5-alpine3.19

# working directory
WORKDIR /api

# copy local source code to container
COPY . .

# install package
RUN go mod download

RUN go build -o /main

# port
EXPOSE 8080

CMD [ "/main" ]