# docker-webserver
Simple webserver into docker (uses shared volumes), it is based on [node-static](https://github.com/cloudhead/node-static)

# Pulling docker image from docker hub
1. Ensure you have [docker](https://www.docker.com) installed
2. Type: `docker pull jcenzano/docker-webserver`

# Creating the docker image locally (optional)
1. Ensure you have docker [docker](https://www.docker.com) and make installed
2. Type `make`

# Testing the image
1. You should create a HTML test file first, such as:
```
echo "It works." > /tmp/test.html
```
2. You can run the webserver against the previous directory typing:
```
docker run --rm -itd -v /tmp:/root/media -p 8080:8080 jcenzano/docker-webserver /root/media -a 0.0.0.0 -p 8080 
```
The previous command offer through HTTP the contents of local `/tmp/` dir

3. Using your browser navigate to `http://localhost:8080/test.html`, you should see "It works."

The docker container options are the options of [node-static](https://github.com/cloudhead/node-static)
