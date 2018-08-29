#!/bin/bash

N=${1:-4}

docker run -it --rm --name=watcher --net=lachesisnet --ip=172.77.5.99 quan8/watcher /watch.sh $N