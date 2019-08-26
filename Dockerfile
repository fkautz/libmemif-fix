FROM ubuntu:18.04
RUN apt update
RUN apt install -y cmake clang

ADD . /app

WORKDIR /app

RUN cmake .
RUN make
RUN make install
