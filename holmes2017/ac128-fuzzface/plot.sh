if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

ngspice -b $1-plot.cir

for FUZ in 0.01 0.99; do
  for FRQ in 200 500 1200; do
    ./plotoutput.py output-fuz_${FUZ}-frq_${FRQ}-amps.png output-fuz_${FUZ}-frq_${FRQ}-amp_0.001 output-fuz_${FUZ}-frq_${FRQ}-amp_0.01 output-fuz_${FUZ}-frq_${FRQ}-amp_0.1
  done
done

for FRQ in 500; do
  for AMP in 0.001 0.01 0.1; do
    ./plotoutput.py output-fuzs-frq_${FRQ}-amp_${AMP}.png output-fuz_0.1-frq_${FRQ}-amp_${AMP} output-fuz_0.5-frq_${FRQ}-amp_${AMP} output-fuz_0.99-frq_${FRQ}-amp_${AMP}
  done
done
