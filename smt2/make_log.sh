export Z3_EXE=${Z3_EXE:-"z3"}
export Z3_VERSION=${Z3_VERSION:-$(eval "$Z3_EXE" --version | sed -E 's/.* ([0-9]+\.[0-9]+\.[0-9]+).*/\1/g')}
DIRNAME="$(realpath "$(dirname "$0")")"

if [ -z "$1" ]; then
    mkdir -p "$DIRNAME/../logs"
    cd "$DIRNAME/../logs"
else
    cd "$1"
fi

while read -r file; do
    "$DIRNAME/z3.sh" "$file"
done <<< "$(find "$DIRNAME" -name "*.smt2" -type f)"
