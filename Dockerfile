FROM node:latest
EXPOSE 8080

RUN npm install http-server -g

COPY index.html /usr/local/www/index.html

ENTRYPOINT [ "http-server", "/usr/local/www" ]