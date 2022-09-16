#!/bin/bash
API="https://papermc.io/api/v2"
PROJECT="paper"
VERSION="1.19.2"

latestBuild=$(curl -sX 'GET' "$API/projects/$PROJECT/versions/$VERSION" -H 'accept: application/json' | jq '.builds | .[-1]')

jarName="$PROJECT-$VERSION-$latestBuild.jar"
echo "Starting download of latest available patch for "$VERSION": " "$jarName"...

downloadUrl="$API"/projects/"$PROJECT"/versions/"$VERSION"/builds/"$latestBuild"/downloads/"$PROJECT"-"$VERSION"-"$latestBuild".jar

wget $downloadUrl