#!/bin/zsh
#docker-machine start --driver virtualbox default | true
docker-machine start default | true
docker-machine env default
eval "$(docker-machine env default)"

