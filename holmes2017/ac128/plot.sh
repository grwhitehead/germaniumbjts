if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

ngspice -b $1-plot.cir

./plotoutput.py output output-ib_75u output-ib_501u output-ib_750u output-ib_1000u

./plotoutput2.py output2 output2
