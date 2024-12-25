if [ ! -f $(dirname "$0")/dafny/Binaries/Dafny ]; then
    cd $(dirname "$0")/dafny && make
fi
