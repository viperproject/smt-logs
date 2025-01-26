# Can pass in a list of verifiers to run, or defaults to all
# Can set TIMEOUT to change the timeout for each verifier

VERIFIERS="$@"
if [ -z "$VERIFIERS" ]; then
    VERIFIERS="silicon carbon dafny fstar smt-comp verus"
fi

echo "Initialising submodules"
git submodule update --init --recursive &> /dev/null

DIRNAME="$(realpath "$(dirname "$0")")"
VERIFIERS="$DIRNAME/$(echo "$VERIFIERS" | sed "s| |\n$DIRNAME/|g")"
while read -r verifier; do
    echo "[Running $verifier]"
    cd "$verifier"
    ./build.sh || exit 1
    VERIFIER=$(basename "$verifier")
    # Split on '\n' with `while` instead of potentially ' ' in filename with `for`
    while read -r file; do
        # This requires that 
        no_prefix=$(echo "$file" | perl -pe "s|.*?/$VERIFIER/($VERIFIER/)?||")
        if [ "$file" == "$no_prefix" ]; then
            echo "Could not strip prefix (.*/$VERIFIER/): $no_prefix"
            exit 1
        fi
        echo "[.smt2] $VERIFIER/$no_prefix"
        ./run.sh "$file" "../smt2/$VERIFIER/$no_prefix" "${TIMEOUT:-10}" || exit 1
    done <<< "$(./tests.sh)"
done <<< "$VERIFIERS"
