OUT="$(pwd)/$(echo "${2%.*}" | sed 's/ /_/g')"
mkdir -p "$(dirname "$OUT")"

cd "$(dirname "$0")/dafny"
Binaries/Dafny /deprecation:0 /compile:0 /timeLimit:$3 /print:$OUT.bpl /vcsCores:1 /proverLog:$OUT-@PROC@.smt2 "$1" > /dev/null

# Check if "$1.expect" exists and if so if it contains " Error:", then it's ok for the above to fail
if [ $? -eq 0 ] || ([ -f "$1.expect" ] && grep -q " Error:" "$1.expect"); then
    exit 0
else
    exit 1
fi
