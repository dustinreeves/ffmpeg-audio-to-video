#!/bin/bash
# Run this script from the root of the project directory
for i in input/*.mp3 ; do
  if [ -e "$i" ]; then
    OUTPUTFILENAME=$(basename "$i")
fname="${OUTPUTFILENAME%.*}"
id3v2 -a "Podcast Title Here" -t "$fname" "input/$i"
echo "$fname"
  fi
done