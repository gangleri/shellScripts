#!/usr/bin/env bash

for i in *.m4a; do
	ffmpeg "${i%.m4a}.mp3" -i "$i" -codec:a libmp3lame -qscale:a 1
done

