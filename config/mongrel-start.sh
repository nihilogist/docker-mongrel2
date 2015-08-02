#!/bin/bash

echo Removing previous PID file, because ...
rm /opt/config/run/mongrel2.pid

echo Loading mongrel2 configuration
m2sh load -config mysite.conf

echo Starting mongrel2 server
m2sh start -host localhost
