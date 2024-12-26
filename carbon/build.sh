cd "$(dirname "$0")/../viper"

./build.sh || exit 1
if ! type boogie > /dev/null; then
  dotnet tool install --global boogie
fi
