# docker-mongrel2
##A Dockerfile to produce a mongrel2 webserver
This repository is a simple Dockerfile that starts at the mongrel2 base image and just gets a simple test site running.
On running the dockerfile, it starts the mongrel2 test site on port 6767.
##Getting started
* Build the docker image: `docker build -t *image_name* .`
* Run the image: `docker run -d -p 6767:6767 *image-name*`
* On the host machine go to `localhost:6767/tests/sample.html` and you should see the words *hi there*
##What has that done?
This has:
* Retrieved a base image from Dockerhub with the mongrel2 webserver ready installed.
* Configured the mongrel2 webserver to use the config files for its most basic test application
* Started the docker container, which started the mongrel2 webserver, and mapped the port 6767 on that container to port 6767 on localhost

##What's next?
The next item on the to-do list is to try and make the mongrel2 configuration a bit easier, so that we can easily drop in the necessary config. That might go in a new layer of the Dockerfile though.

