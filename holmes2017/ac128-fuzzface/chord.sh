SPICE_AUDIO_TOOLS=../../../spice-audio-tools

if [ \! -x ${SPICE_AUDIO_TOOLS}/wavtospice.py ] || [ \! -x ${SPICE_AUDIO_TOOLS}/spicetowav.py ]; then
  echo "ERROR: Can't find spice-audio-tools"
  exit 1
fi

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

${SPICE_AUDIO_TOOLS}/wavtospice.py --vrange 0.1 chord.wav chord
ngspice -b $1-chord.cir
${SPICE_AUDIO_TOOLS}/spicetowav.py chord-$1 chord-$1.wav
afplay chord-$1.wav
