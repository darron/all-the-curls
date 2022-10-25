FROM golang:latest AS build

ENV CGO_ENABLED=0 
ENV GOOS=linux
RUN go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest

FROM curlimages/curl
WORKDIR /bin/
COPY --from=build /go/bin/grpcurl .