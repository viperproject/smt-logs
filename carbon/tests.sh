DIRNAME=$(dirname $0)
DIRNAME=$(realpath "$DIRNAME/../viper/viperserver")
find $DIRNAME/carbon/src/test/resources $DIRNAME/carbon/silver/src/test/resources -name "*.vpr" -type f
