if [ ! -f $(dirname "$0")/silicon/target/scala-*/silicon.jar ]; then
  cd $(dirname "$0")/silicon && sbt assembly
fi
