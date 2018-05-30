FROM node:latest
RUN npm install -g typescript @angular/cli
RUN mkdir app && cd app
WORKDIR /app
COPY . .
EXPOSE 4200