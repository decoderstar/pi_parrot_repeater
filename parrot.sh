mkdir recordings
while true; do
	rec output.wav silence 1 5 5% 1 0:00:3 5%
	aplay -D plughw:2,0 output.wav
	DATE=`date +%Y%m%d%H%M%S`
	mv output.wav recordings/$DATE.wav
	sox recordings/$DATE.wav -n spectrogram -x 300 -y 200 -z 100 -t $DATE.wav -o recordings/$DATE.png
	aplay -D plughw:2,0 endtone.wav
	sleep 5
done
