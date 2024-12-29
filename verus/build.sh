cd "$(dirname "$0")/verus/source"

if [ ! -f ./target-verus/release/verus ]; then
    source ../tools/activate
    ./tools/get-z3.sh
    vargo build --release
fi
