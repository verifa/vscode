FROM node:10-slim

RUN apt update && \
	apt -y install g++ make pkg-config python

WORKDIR /app

COPY . .

RUN yarn install
