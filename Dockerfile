# Generate a docker for simple static webserver
# by Jordi Cenzano
# VERSION               1.0.0

FROM ubuntu:16.04
MAINTAINER jordi.cenzano@gmail.com

# Update
RUN apt-get update -y

# Upgrade
RUN apt-get upgrade -y

# Install curl
RUN apt-get install curl -y

# Install nodejs
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - && \
apt-get install nodejs -y

# Install simple webserver
RUN npm install -g node-static

# Clean up
RUN apt-get clean

# Start
ENTRYPOINT ["static"]
CMD ["-p 8080"]