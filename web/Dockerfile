FROM ubuntu:20.04

MAINTAINER Asitha Bandara (@admatbandara)

# deamon mode off
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

# expose ports
EXPOSE 80 443

# add nginx conf to the conf.d
ADD config/scubabooker.conf /etc/nginx/conf.d/scubabooker.conf

# add nginx conf
ADD config/scubabooker.conf /etc/nginx/sites-available/scubabooker

# create symlinks
RUN ln -s /etc/nginx/sites-available/scubabooker /etc/nginx/sites-enabled/

WORKDIR /etc/nginx

CMD ["nginx"]
