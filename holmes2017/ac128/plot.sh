if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

mkdir -p data

ngspice -b $1-plot.cir

./plotoutput.py plots/$1-ce.png data/$1-ce-ib_75u data/$1-ce-ib_501u data/$1-ce-ib_750u data/$1-ce-ib_1000u

./plotoutput2.py plots/$1-ce2.png data/$1-ce2
