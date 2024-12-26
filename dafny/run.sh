OUT="$(pwd)/$(echo "${2%.*}" | sed 's/ /_/g')"
mkdir -p "$(dirname "$OUT")"

cd "$(dirname "$0")/dafny"
# The file "git-issue-2134.dfy" produces a stack overflow with an insanely long
# stack trace. We don't want to see that, so we redirect stderr to /dev/null.
OUTPUT=$(./Binaries/Dafny /deprecation:0 /compile:0 /timeLimit:$3 /print:$OUT.bpl /vcsCores:1 /proverLog:$OUT-@PROC@.smt2 "$1" 2> /dev/null)
if [ $? -eq 0 ]; then
    exit 0
fi
while read -r out_line; do
    # Return error if the output line contains " Error:" but does not start with
    # a filename. This means it's not a verification error pointing to a file.
    if grep -q " Error:" <<< "$(echo "$out_line" | sed "s|\.dfy.*|.dfy|g")"; then
        echo "[ERROR] $OUTPUT"
        exit 1
    fi
done <<< "$OUTPUT"
