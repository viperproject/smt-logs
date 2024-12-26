../viper/build.sh
if ! type boogie > /dev/null; then
  dotnet tool install --global boogie
fi
