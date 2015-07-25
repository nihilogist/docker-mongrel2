FROM debian

RUN apt-get -qq -y update && apt-get -q -y install curl build-essential sqlite3 libsqlite3-dev uuid-dev

RUN curl -L http://download.zeromq.org/zeromq-2.1.4.tar.gz | tar xz && cd zero* && ./configure && make && make install

RUN ldconfig -v

RUN curl -L https://github.com/mongrel2/mongrel2/releases/download/1.9.2/mongrel2-v1.9.2.tar.bz2 | tar xj && cd mongrel* && make install

RUN cp /mongrel2-v1.9.2/examples/configs/sample.conf /mongrel2-v1.9.2/mysite.conf

RUN m2sh load -config /mongrel2-v1.9.2/mysite.conf

RUN mkdir /mongrel2-v1.9.2/logs

RUN chmod a+rwx /mongrel2-v1.9.2/logs

CMD m2sh start -host localhost

