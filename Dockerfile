FROM nihilogist/mongrel2-base:latest

#Install supervisord
RUN apt-get update && apt-get install -y supervisor

#Copy necessary files over
COPY deployment /deployment
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

#Start mongrel2 and tail the error logs so that the container doesn't terminate
CMD ["/usr/bin/supervisord"]
