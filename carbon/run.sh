OUT=$(pwd)/${2%.*}
mkdir -p $(dirname "$OUT")
cd $(dirname "$0")/carbon && Z3_EXE=$(which z3) BOOGIE_EXE=$(which boogie) java -jar ./target/scala-*/carbon.jar --timeout $3 --print "$OUT.bpl" --boogieOpt "/proverLog:$OUT-@PROC@.smt2" $1
