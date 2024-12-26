OUT=$(pwd)/${2%.*}
mkdir -p $(dirname "$OUT")
# cd $(dirname "$0")/silicon && Z3_EXE=$(which z3) java -Xss30M -jar ./target/scala-*/silicon.jar --timeout $3 --numberOfParallelVerifiers 1 --proverLogFile "$OUT.smt2" $1
python $(dirname $0)/../viper/viper_client/client.py -j bulk -p 50424 -f $1 -v silicon -x="--disableCaching --timeout $3 --numberOfParallelVerifiers 1 --proverLogFile \"$OUT.smt2\"" > /dev/null
