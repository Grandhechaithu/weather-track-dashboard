FROM nginx:alpine

WORKDIR /usr/share/nginx/html
RUN rm -rf ./*
COPY public/ .
COPY images ./images
EXPOSE 80