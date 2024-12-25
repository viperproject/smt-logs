if [ ! -f $(dirname "$0")/carbon/target/scala-*/carbon.jar ]; then
    cd $(dirname "$0")/carbon && sbt assembly
fi
if ! type boogie > /dev/null; then
  dotnet tool install --global boogie
fi
