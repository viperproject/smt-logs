OUT="$(pwd)/${2%.*}"
mkdir -p "$(dirname "$OUT")"
python "$(dirname "$0")/../viper/viper_client/client.py" -j bulk -p 50424 -f "$1" -v carbon -x="--disableCaching --boogieExe \"$(which boogie)\" --timeout \"$3\" --print \"$OUT.bpl\" --boogieOpt \"/proverLog:$OUT-@PROC@.smt2\"" > /dev/null
