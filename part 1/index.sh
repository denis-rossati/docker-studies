#!/bin/bash

# I'll jump the installation part. I've already installed docker locally

sudo docker run -d -p 3000:3000 docker/getting-started
# the flag -d allow the container to run in background
# the flag -p specifies the [host port]:[container port]
# the "docker/getting-started" is the image that will be used

