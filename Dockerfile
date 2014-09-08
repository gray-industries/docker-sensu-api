FROM grayindustries/docker-sensu-client
MAINTAINER Greg Poirier <grep@gray.industries>

ADD files/supervisord-sensu-api.conf /etc/supervisor/conf.d/sensu-api.conf
ADD files/settings.json /etc/sensu/settings.json
EXPOSE 4567
