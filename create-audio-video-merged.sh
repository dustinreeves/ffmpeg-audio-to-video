#!/bin/bash
# Run this script from the root of the project directory
for input in input/*.mp3 ; do
o=$(basename "$input")
fname="${o%.*}"
ffmpeg  -i posterloop3hr.mp4 -i "$input" -shortest -c:a copy -c:v copy -y "output/$fname.mp4"
#./youtubeuploader_linux_amd64 -privacy public -title "TITLEHERE $fname" -description "DESCRIPTIONHERE $fname" -filename "output/$fname.mp4"
#rm -rf "output/$fname.mp4"
fi
done
g