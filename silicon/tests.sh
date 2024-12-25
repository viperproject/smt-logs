DIRNAME=$(realpath "$0" | xargs dirname)
find $DIRNAME/silicon/src/test/resources $DIRNAME/silicon/silver/src/test/resources -name "*.vpr" -type f
