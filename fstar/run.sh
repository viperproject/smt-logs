Z3_VERSION=$(z3 --version | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+).*/\1/g')

export FSTAR_ROOT="$(realpath "$(dirname "$0")")/fstar"
export FSTAR_HOME="$FSTAR_ROOT"
export FSTAR_EXE="$FSTAR_ROOT/bin/fstar.exe"
# Instead of using "OTHERFLAGS", this is an ugly hack to force our flags to take
# priority since "HINTS_ENABLED" is last appended in "fstar/mk/test.mk".
export HINTS_ENABLED=" --z3version \"$Z3_VERSION\" --log_queries "
# FSTAR_EXE="$FSTAR_ROOT/bin/fstar.exe"

OUT="$(pwd)/$(dirname "$2")"
mkdir -p "$OUT"

cd "$(dirname "$1")"
make clean
make

while read -r file; do
    [ -z "$file" ] && continue
    tgt="$(basename "$file")"
    tgt="$OUT/${tgt#./}"
    mv "$file" "$tgt"
done <<< "$(find . -name "*.smt2" -type f)"
