OUT="$(pwd)/$2"
mkdir -p "$(dirname "$OUT")"
cp "$1" "$OUT"
