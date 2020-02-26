if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

mkdir -p data

ngspice -b $1-plot.cir

for FRQ in 200 500 1200; do
    ./plotoutput.py plots/sin_${FRQ}-amps-$1.png data/sin_${FRQ}-amp_0.1-$1 data/sin_${FRQ}-amp_0.5-$1 data/sin_${FRQ}-amp_1-$1
done
