# docker-mongrel2
##A Dockerfile to produce a mongrel2 webserver
This repository is a simple Dockerfile that starts at the mongrel2 base image and just gets a simple test site running.
On running the dockerfile, it starts the mongrel2 test site on port 6767.

##Getting started
* Build the docker image `docker build -t [image-name] .`
* Start the docker container `docker run -d -p 6767:6767 [image-name]`
* On the host machine go to `localhost:6767/tests/index.html` and you should see an HTML page: "Hello World"

##What has that done?
This has:

1. Pulled down a pre-built Docker image from the docker hub with ZeroMQ and mongrel2 preinstalled

2. Installed the supervisor program

3. Copied the `deployment` directory and `supervisord.conf` file to the container

4. Started the container with the port 6767 exposed, and mapped to port 6767 on the host machine

5. On starting the container, the supervisor daemon kicks off the mongrel `procer` process management tool to start up the server with the basic /tests/ route available

##What's next?
Umm... nothing much anymore. This was just a placeholder for the dockerfile and related experiments so that we could get mongrel2 up and running. Next steps will be in further repositories that will start linking up dockerfiles.
