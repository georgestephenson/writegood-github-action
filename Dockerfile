# Container image that runs your code
FROM node:18-slim

# Install write-good globally
RUN npm install -g write-good

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["bash", "/entrypoint.sh"]
