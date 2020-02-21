# ==== PREPARE BUILD =====

# FROM golang:1.13 as builder
FROM golang:onbuild as builder

LABEL maintainer="Valmir Barbosa <valmir.php@gmail.com>"

WORKDIR /go/src/app
COPY . .

RUN go build -o app .
# RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app .

# RUN go get -d -v ./...
# RUN go install -v ./...

# ==== PREPARE COMMIT =====
FROM scratch
COPY --from=builder /go/src/app /
CMD ["/app"]