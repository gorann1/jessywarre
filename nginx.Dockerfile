FROM nginx
RUN apt-get update -qq && apt-get -y install apache2-utils
ENV RAILS_ROOT /app
WORKDIR $RAILS_ROOT
RUN mkdir log
COPY public public/
COPY entrypoint.sh /usr/local/bin/nginx-entrypoint.sh
# Copy Nginx config template
RUN rm /etc/nginx/conf.d/default.conf
COPY docker/nginx/scubabooker.conf /etc/nginx/conf.d/scubabooker.conf

# Nginx init
RUN ["chmod", "+x", "/usr/local/bin/nginx-entrypoint.sh"]
ENTRYPOINT ["/usr/local/bin/nginx-entrypoint.sh"]


#COPY nginx.conf /tmp/docker.nginx
#RUN envsubst '$RAILS_ROOT' < /tmp/docker.nginx > /etc/nginx/conf.d/default.conf
#EXPOSE 80
#CMD [ "nginx", "-g", "daemon off;" ]
