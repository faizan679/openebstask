FROM golang:onbuild

RUN go get github.com/beego/bee

RUN mkdir /app

ADD goweb.go /app/goweb.go

WORKDIR /app

EXPOSE 8080

CMD ["bee", "run"]


