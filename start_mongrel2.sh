echo Building the Mongrel2 container
docker build -t config-test .

echo Starting the Mongrel2 container
docker run -d -p 6767:6767 -v $PWD/config:/opt/config config-test
