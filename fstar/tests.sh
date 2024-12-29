FSTAR="$(realpath "$(dirname "$0")")/fstar"
find -L "$FSTAR/tests" "$FSTAR/examples" -name "Makefile" -type f
