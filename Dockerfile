FROM nihilogist/mongrel2-base:latest

#Copy sample site config to base directory
RUN cp /mongrel2-v1.9.2/examples/configs/sample.conf /mongrel2-v1.9.2/mysite.conf

#Instantiate that config as a mongrel2 configuration
RUN cd /mongrel2-v1.9.2 && m2sh load -config /mongrel2-v1.9.2/mysite.conf

#Create some necessary working directories
RUN cd /mongrel2-v1.9.2 && mkdir /mongrel2-v1.9.2/logs && chmod a+rwx logs

RUN cd /mongrel2-v1.9.2 && mkdir run tmp

#Start mongrel2 and tail the error logs so that the container doesn't terminate
CMD cd /mongrel2-v1.9.2 && m2sh start -host localhost && tail -F /mongrel2-v1.9.2/logs/error.log


