if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

ngspice -b $1-plot.cir

./plotoutput.py output output-ib_8u output-ib_25u output-ib_38u output-ib_50u

