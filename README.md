# docker-mongrel2
##A Dockerfile to produce a mongrel2 webserver
This repository is a simple Dockerfile that starts at the mongrel2 base image and just gets a simple test site running.
On running the dockerfile, it starts the mongrel2 test site on port 6767.
##Getting started
* Execute the script **start_mongrel2.sh**
* On the host machine go to `localhost:6767/tests/sample.html` and you should see the words *hi there*
##What has that done?
This has:
1. Built a container from the Dockerfile in this folder, using a preconfigured image from Dockerhub that contains the mongrel2 webserver
2. Mounted the contents of the **config** folder into that container
3. Started the container with the 6767 port exposed to the host
4. Executed the **mongrel-start.sh** script to perform basic configuration setup and start the server
5. Set the logs to continuously tail to make sure that the container doesn't just exit (*this is not the right way to do this, for reference* ;) )
##What's next?
The next item on the to do list is to make the startup of the mongrel server a bit nicer so that we don't have to this horribly **tail -F** command to keep it running.
