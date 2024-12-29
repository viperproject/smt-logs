grep -oEr "#\[test\] (\w+)" "$(realpath "$(dirname "$0")")/verus/source/rust_verify_test/tests" | sed -E "s|^(.*):#\[test\] ([a-zA-Z_0-9-]+)|\1 \2|g"
