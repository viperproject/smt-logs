# Can pass in a list of verifiers to run, or defaults to all
# Can set TIMEOUT to change the timeout for each verifier

VERIFIERS=$@
if [ -z "$VERIFIERS" ]; then
    VERIFIERS="silicon carbon dafny"
fi

git submodule update --init --recursive &> /dev/null

DIRNAME=$(realpath $0 | xargs dirname)
VERIFIERS="$DIRNAME/$(echo $VERIFIERS | sed "s| | $DIRNAME/|g")"
for verifier in $VERIFIERS; do
    echo "[Running $verifier]"
    cd $verifier
    ./build.sh
    VERIFIER=$(basename $verifier)
    for file in `./tests.sh`; do
        no_prefix=$(echo $file | sed "s|.*/$VERIFIER/||g")
        if [ "$file" == "$no_prefix" ]; then
            echo "Could not strip prefix (.*/$VERIFIER/): $no_prefix"
            exit 1
        fi
        echo "[.smt2] $no_prefix"
        ./run.sh $file ../smt2/$VERIFIER/$no_prefix ${TIMEOUT:-10}
        break # TODO: Remove this line
    done
done
