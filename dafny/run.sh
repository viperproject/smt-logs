OUT=$(pwd)/${2%.*}
mkdir -p $(dirname "$OUT")

cd $(dirname "$0")/dafny
Binaries/Dafny /deprecation:0 /compile:0 /timeLimit:$3 /print:$OUT.bpl /vcsCores:1 /proverLog:$OUT-@PROC@.smt2 $1
