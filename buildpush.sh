#!/bin/bash

clear
if [ $# -lt 2 ]
then
  echo "missing arguments. Expect ./buildpush.sh <REPOSITORY> <VERSION_TAG>"
  echo "example:   ./buildpush.sh dtdemos 1"
  exit 1
fi

IMAGE=dt-orders-catalog-service
REPOSITORY=$1
VERSION_TAG=$2
FULLIMAGE=$REPOSITORY/$IMAGE:$VERSION_TAG

#./mvnw clean package
./mvnw clean package -Dmaven.test.skip=true

docker build -t $FULLIMAGE .

echo ""
echo "========================================================"
echo "Ready to push $FULLIMAGE ?"
echo "========================================================"
read -rsp "Press ctrl-c to abort. Press any key to continue"

docker push $FULLIMAGE