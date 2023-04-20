FROM nginx
EXPOSE 80 443
RUN apt-get update && apt-get upgrade -y && apt-get install -y iproute2
COPY /dist/clock-host/start_init.sh /
COPY /dist/clock-host /usr/share/nginx/html
RUN chmod 777 /start_init.sh
CMD ["bash", "-c", "/start_init.sh && nginx -g \"daemon off;\""]
