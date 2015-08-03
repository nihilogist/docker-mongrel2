FROM nihilogist/mongrel2-base:latest

COPY deployment /deployment

#Start mongrel2 and tail the error logs so that the container doesn't terminate
CMD cd /opt/config && ./mongrel-start.sh 
