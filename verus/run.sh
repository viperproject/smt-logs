OP=($2)
OUT="$(pwd)/$(echo "${OP[0]%.*}" | sed 's/ /_/g')/${OP[1]}"
mkdir -p "$(dirname "$OUT")"

cd "$(dirname "$0")/verus/source"
export VERUS_EXTRA_ARGS="--log-dir $OUT --log smt --rlimit $3"
export VARGO_IN_NEXTEST=true
TEST=($1)
FILE=${TEST[0]#$(pwd)/rust_verify_test/tests/}
vargo test --package rust_verify_test --test ${FILE%.*} -- ${TEST[1]} --exact &> /dev/null || exit 1
if [ -f "$OUT/root.smt2" ]; then
  mv "$OUT/root.smt2" "$OUT.smt2"
  rmdir "$OUT" || true
fi
