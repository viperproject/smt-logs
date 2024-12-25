DIRNAME=$(realpath "$0" | xargs dirname)
find $DIRNAME/carbon/src/test/resources $DIRNAME/carbon/silver/src/test/resources -name "*.vpr" -type f
