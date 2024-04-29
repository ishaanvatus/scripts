#!/bin/bash

for f in *.en.vtt
do 
        ffmpeg -i "$f" -i "$(basename "$f" .en.vtt).$1" -c copy -disposition:s:0 0 -disposition:s:0 default "_$(basename "$f" .en.vtt).mkv"
        rm "$f"
        rm "$(basename "$f" .en.vtt).$1"
done
