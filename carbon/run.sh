OUT=$(pwd)/${2%.*}
mkdir -p $(dirname "$OUT")
# cd $(dirname "$0")/carbon && Z3_EXE=$(which z3) BOOGIE_EXE=$(which boogie) java -Xss30M -jar ./target/scala-*/carbon.jar --timeout $3 --print "$OUT.bpl" --boogieOpt "/proverLog:$OUT-@PROC@.smt2" $1
python $(dirname $0)/../viper/viper_client/client.py -j bulk -p 50424 -f $1 -v carbon -x="--disableCaching --boogieExe=$(which boogie) --timeout $3 --print \"$OUT.bpl\" --boogieOpt \"/proverLog:$OUT-@PROC@.smt2\"" > /dev/null
