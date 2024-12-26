FSTAR="$(realpath "$(dirname "$0")")/fstar/bin/fstar.exe"

OUT="$(pwd)/$(dirname "$2")"
mkdir -p "$OUT"
cd "$OUT"

Z3_VERSION=$(z3 --version | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+).*/\1/g')
"$FSTAR" --z3version "$Z3_VERSION" --log_queries "$1"
