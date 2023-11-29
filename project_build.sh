#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Error: No argument provided. Please provide at least one argument."
    exit 1  
fi

project_name=$(basename $(realpath $1))

if [ -z "$2" ]; then
    scheme=$project_name
else
    second_input="$2"
fi

rm -rf $project_name.xcarchive

#xcodebuild -scheme $1 archive -archivePath "$1.xcarchive"
xcodebuild -project $1/$project_name.xcodeproj \
  -scheme $scheme clean archive -configuration release \
  -archivePath $project_name.xcarchive
sh xcarchive_to_ipa.sh $project_name.xcarchive
