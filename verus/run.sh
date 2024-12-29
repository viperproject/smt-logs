OP=($2)
OUT="$(pwd)/$(echo "${OP[0]%.*}" | sed 's/ /_/g')/${OP[1]}"
mkdir -p "$(dirname "$OUT")"

cd "$(dirname "$0")/verus/source"
VARGO="../tools/vargo/target/release/vargo"
export VERUS_EXTRA_ARGS="--log-dir $OUT --log smt --rlimit $3"
export VARGO_IN_NEXTEST=true
TEST=($1)
FILE=${TEST[0]#$(pwd)/rust_verify_test/tests/}
OUTPUT=$($VARGO test --release --package rust_verify_test --test ${FILE%.*} -- ${TEST[1]} --exact 2>&1)
# if [ $? -ne 0 ]; then
#   echo "[ERROR] $OUTPUT"
#   exit 1
# fi
if [ -f "$OUT/root.smt2" ]; then
  mv "$OUT/root.smt2" "$OUT.smt2"
  rmdir "$OUT" || true
fi
