OUT=$(pwd)/$2
mkdir -p $(dirname "$OUT")
cd $(dirname "$0")/dafny && Binaries/Dafny /compile:0 /print:"$OUT.bpl" /vcsCores:1 /proverLog:"$OUT.smt2" /proverOpt:O:trace-file-name="$OUT.log" /proverOpt:O:trace=true /proverOpt:O:proof=true $1
