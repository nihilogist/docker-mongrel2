#!/bin/bash

echo Loading mongrel2 configuration
m2sh load -config mysite.conf

echo Starting mongrel2 server
m2sh start -host localhost
