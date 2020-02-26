if [ "$#" -ne 1 ]; then
  echo "Usage: $0 circuit" >&2
  exit 1
fi

mkdir -p data

ngspice -b $1-plot.cir

./plotoutput.py plots/$1-ce.png data/$1-ce-ib_8u data/$1-ce-ib_25u data/$1-ce-ib_38u data/$1-ce-ib_50u
