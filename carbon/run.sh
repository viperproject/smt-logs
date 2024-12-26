OUT="$(pwd)/${2%.*}"
mkdir -p "$(dirname "$OUT")"
ERROR=$((python "$(dirname "$0")/../viper/viper_client/client.py" -j bulk -p 50424 -f "$1" -v carbon -x="--disableCaching --boogieExe \"$(which boogie)\" --timeout \"$3\" --print \"$OUT.bpl\" --boogieOpt \"/proverLog:$OUT-@PROC@.smt2\"" > /dev/null) 2>&1)
if [ ! -z "$ERROR" ]; then
  echo "[ERROR] $ERROR"
  exit 1
fi
