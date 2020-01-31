if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

ngspice -b $1-plot.cir

for FRQ in 200 500 1200; do
  ./plotoutput.py output-frq_${FRQ}-amps.png output-frq_${FRQ}-amp_0.1 output-frq_${FRQ}-amp_0.5 output-frq_${FRQ}-amp_1
done
