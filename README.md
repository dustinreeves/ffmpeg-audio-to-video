# FFmpeg Batch Convert Audio (mp3) to Video (mov)

This script can be used to batch process a directory of audio files, located in `input/`, and save the new videos in the `output/` directory.

**Why would I want to do this?**

~~There's a certain video hosting platform that will auto-caption and/or auto generate .srt files from transcripts. I was curious whether it might be a decent solution for captioning audio files. The only issue was getting them uploaded without manually converting the audio to video.~~

I  wanted to convert a bunch of podcast MP3's into MP4's for youtube (primarily for archive purposes...), and i didnt want use DaVinci/Upload a ton of files from my desktop, so i bought a VPS for $3 dollars and stole @michaelck's code! (thanks!)

\*Requires FFmpeg installed

## Instructions

### Initial setup

- Install [FFmpeg](https://www.ffmpeg.org/)
  - Easiest method for OSX users with [Homebrew](https://brew.sh/) installed is `brew install ffmpeg`
- Create two directories within the **ffmpeg-audio-to-video** project root
  - `input/`
  - `output/`
- Place all of your audio in the new `input/` (or alter the script to point to your target input directory)

#### Optional

By default, the output video is a blank image throughout its duration. If you'd like to create a custom image to be displayed on the video, follow the steps below:

- Save an image named poster.png (1920x1080) to the **ffmpeg-audio-to-video** project root
- Run the following command from  the **ffmpeg-audio-to-video** project root `bash create-video.sh`

Future conversions will now feature your updated poster image.

### Running the script

- In the terminal, navigate to the **ffmpeg-audio-to-video** project root
- Run the following command `bash create-audio-video-merged.sh`
