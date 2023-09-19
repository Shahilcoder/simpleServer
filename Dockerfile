FROM debian:latest

WORKDIR /app/server

COPY . .

RUN apt update
RUN apt install gcc -y
RUN apt install g++ -y
RUN apt install cmake -y
RUN apt install libjsoncpp-dev -y
RUN apt install uuid-dev -y
RUN apt install zlib1g-dev -y
RUN apt install openssl -y
RUN apt install libssl-dev -y

RUN make build

CMD ["build/app/server"]