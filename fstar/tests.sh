TESTS="$(realpath "$(dirname "$0")")/fstar/tests"
find -L "$TESTS" -name "Makefile" -type f
