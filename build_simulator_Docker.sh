#!/bin/bash
# build docker image for emergency booking consumer simulator
# usage build_provider_simulator_Docker.sh [<userid>]
# if no user id is provided it defaults to 1000 and the tag is just the version number
#
TAG=0.1

if [[ "$1" == "" ]]
then
	USER_ID=1000
else
	USER_ID=$1
	TAG+=-$USER_ID
fi

IMAGENAME=tkw_skeleton_simulator
PROJECT=SKELETON

echo "Building $IMAGENAME:$TAG"
read -n 1 -p "Press any key to continue..."
echo building

# put the git commit hash and date into a text file
echo "Skeleton Simulator Version: $TAG"  > version_string.txt
echo "Skeleton Github repository shortcode:" `git show -s --format="$PROJECT %h %cI"` >> version_string.txt


#Build the docker image
docker build --build-arg USER_ID=$USER_ID -f Dockerfile.simulator -t nhsdigitalmait/$IMAGENAME:$TAG -t nhsdigitalmait/$IMAGENAME:latest .
echo Docker Image tagged with $TAG
