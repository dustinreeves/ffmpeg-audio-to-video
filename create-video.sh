#!/bin/bash
# Run this script from the root of the project directory
p=poster.png
if [ -e "$p" ]; then
#make a 15 second video of the png (takes time to encode)
ffmpeg -loop 1 -i $p -c:v libx264 -t 15 posterloop1024.mp4
#make a 7hour copy (lower encoding time)
ffmpeg -stream_loop 720 -i posterloop1024.mp4 -c:v copy -y posterloop7hr.mp4
rm posterloop1024.mp4
done

