COMP="$(realpath "$(dirname "$0")")/smt-comp"
find -L "$COMP" -name "*.smt2" -type f
