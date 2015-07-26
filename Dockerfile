FROM nihilogist/zeromq:latest

RUN curl -L https://github.com/mongrel2/mongrel2/releases/download/1.9.2/mongrel2-v1.9.2.tar.bz2 | tar xj && cd mongrel* && make install

RUN cp /mongrel2-v1.9.2/examples/configs/sample.conf /mongrel2-v1.9.2/mysite.conf

RUN cd /mongrel2-v1.9.2 && m2sh load -config /mongrel2-v1.9.2/mysite.conf

RUN cd /mongrel2-v1.9.2 && mkdir /mongrel2-v1.9.2/logs && chmod a+rwx logs

RUN cd /mongrel2-v1.9.2 && mkdir run

RUN cd /mongrel2-v1.9.2 && mkdir tmp

CMD cd /mongrel2-v1.9.2 && m2sh start -host localhost && tail -F /mongrel2-v1.9.2/logs/error.log

