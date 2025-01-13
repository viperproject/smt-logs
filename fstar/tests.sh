FSTAR="$(realpath "$(dirname "$0")")/fstar"
find -L "$FSTAR/tests" "$FSTAR/examples" "$FSTAR/doc" -name "Makefile" -type f
