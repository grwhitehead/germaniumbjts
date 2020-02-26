if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

mkdir -p data

ngspice -b $1-plot.cir

for FUZ in 0.01 0.99; do
    for FRQ in 200 500 1200; do
        ./plotoutput.py plots/sin_${FRQ}-amps-$1-fuz_${FUZ}.png data/sin_${FRQ}-amp_0.001-$1-fuz_${FUZ} data/sin_${FRQ}-amp_0.01-$1-fuz_${FUZ} data/sin_${FRQ}-amp_0.1-$1-fuz_${FUZ}
    done
done

for AMP in 0.001 0.01 0.1; do
    for FRQ in 200 500 1200; do
        ./plotoutput.py plots/sin_${FRQ}-amp_${AMP}-$1-fuzs.png data/sin_${FRQ}-amp_${AMP}-$1-fuz_0.1 data/sin_${FRQ}-amp_${AMP}-$1-fuz_0.5 data/sin_${FRQ}-amp_${AMP}-$1-fuz_0.99
    done
done
