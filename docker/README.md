# Docker 

This folder contains the scripts to build and push various Docker images.

All these images are publicly available on [Docker Hub](https://hub.docker.com/u/quan8/) so it is not necessary
to build them in order to actually use them. 

## Mosaic Networks Developers

Always make sure to update the versions in the makefile.

## Lachesis image

Simple wrapper around Lachesis based on alpine linux.
Refer to demo/ for usage.

## Dummy image

Simple wrapper around the Dummy Client application for Lachesis. This is effectively
a group chat application.  
Refer to demo/ for usage.

## Watcher image

This image describes a container that monitors the consensus stats for a Lachesis
docker network. It is based on the watch.sh script.

## Glider Image

The glider image contains all the tools to compile Lachesis for almost any platform.

We use it in two places:

1) In the circleci job to automate building and testing Lachesis everytime we push
   to Github.
2) In the dist_build.sh script to do a hermetic build and generate binaries for  
   many platforms.
