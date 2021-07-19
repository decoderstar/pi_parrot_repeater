# pi_parrot_repeater
A parrot simplex repeater for radio use.
It will wait for a detectable signal from the microphone and begin recording.
Once a short period of silence is detected (Transmission ceased) it will replay the recording and then a courtesy end-tone.

Each transmission will be logged by a recording and spectral image of the audio itself.

Created for use with the raspberry pi and a baofeng type transceiver through a USB audio card but can be used on any Linux based machine.


Installation instructions

First type this command to download the script
```
git clone https://github.com/decoderstar/pi_parrot_repeater.git
```

Mark the script itself to be executable

```
chmod +x parrot.sh
```
Run the script with ths command.

```
./parrot.sh
```

Hold ctrl+c to exit the script.

