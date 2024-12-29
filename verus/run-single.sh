OUT="$(pwd)/${2%.*}"

mkdir -p "$(dirname "$OUT")"

cd "$(dirname "$0")/verus/source"
./target-verus/release/verus --log-dir "$OUT" --log smt --rlimit "$3" $1
