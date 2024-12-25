# Can pass in a list of verifiers to run, or defaults to all
# Can set TIMEOUT to change the timeout for each verifier

VERIFIERS=$@
if [ -z "$VERIFIERS" ]; then
    VERIFIERS="silicon carbon dafny"
fi

git submodule update --init --recursive &> /dev/null

DIRNAME=$(realpath "$0" | xargs dirname)
VERIFIERS="$DIRNAME/$(echo $VERIFIERS | sed "s| | $DIRNAME/|g")"
for verifier in $VERIFIERS; do
    cd $verifier
    ./build.sh
    for file in `./tests.sh`; do
        no_prefix=${file#"$verifier/"}
        echo "[.smt2] $no_prefix"
        ./run.sh $file ../smt2/$no_prefix ${TIMEOUT:-10}
    done
done
