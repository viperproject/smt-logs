cd "$(dirname "$0")/dafny"

if [ ! -f Binaries/Dafny ]; then
    make
fi
