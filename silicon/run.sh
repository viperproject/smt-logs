OUT="$(pwd)/${2%.*}"
mkdir -p "$(dirname "$OUT")"
ERROR=$((python "$(dirname "$0")/../viper/viper_client/client.py" -j bulk -p 50424 -f "$1" -v silicon -x="--disableCaching --timeout \"$3\" --numberOfParallelVerifiers 1 --proverLogFile \"$OUT.smt2\"" > /dev/null) 2>&1)
if [ ! -z "$ERROR" ]; then
  echo "[ERROR] $ERROR"
  exit 1
fi
