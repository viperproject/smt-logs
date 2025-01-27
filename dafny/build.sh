cd "$(dirname "$0")/dafny"

if ! type boogie > /dev/null; then
  dotnet tool install --global boogie
fi
if [ ! -f ./Binaries/Dafny ]; then
    make
fi
