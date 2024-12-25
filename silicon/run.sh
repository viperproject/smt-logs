OUT=$(pwd)/${2%.*}
mkdir -p $(dirname "$OUT")
cd $(dirname "$0")/silicon && Z3_EXE=$(which z3) java -Xss30M -jar ./target/scala-*/silicon.jar --timeout $3 --numberOfParallelVerifiers 1 --proverLogFile "$OUT.smt2" $1
