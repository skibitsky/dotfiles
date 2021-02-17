#!/bin/zsh

# Makes sure the Docker deamon is running before starting container
# I use it to keep Unity Accelerator container running when Unity engine is launched

if [ $# -eq 0 ]; then
  echo "Container name should be passed as argument"
  return 1
fi

if (! docker stats --no-stream ); then
  open /Applications/Docker.app
  while (! docker stats --no-stream ); do
    echo "Waiting for Docker to launch..."
    sleep 2
  done
fi

if [ ! "$(docker ps -q -f name=$1)" ]; then
  docker start -- $1
fi
