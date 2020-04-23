FROM node:latest
EXPOSE 8080

RUN npm install http-server -g

COPY index.html /usr/local/www

ENTRYPOINT [ "http-server", "/usr/local/www" ]