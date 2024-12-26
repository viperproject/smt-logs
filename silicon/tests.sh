DIRNAME=$(dirname $0)
DIRNAME=$(realpath "$DIRNAME/../viper/viperserver")
find $DIRNAME/silicon/src/test/resources $DIRNAME/silicon/silver/src/test/resources -name "*.vpr" -type f
