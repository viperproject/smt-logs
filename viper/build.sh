# Must be launched from the viper directory

if [ ! -f viperserver/target/scala-*/viperserver.jar ]; then
  cd viperserver && sbt assembly && cd ..
fi

pip install -r viper_client/requirements.txt
# Checks if viperserver is already running, if not starts it (with no
# expectation to exit it - if running locally you need to kill the `java`
# process manually) and waits for 5 seconds before continuing.
python viper_client/client.py -p 50424 -f viper_client/__empty_viper_file__.vpr &> /dev/null || ((Z3_EXE=$(which z3) java -Xss1024m -Xmx4024m -jar viperserver/target/scala-*/viperserver.jar -p 50424 > /dev/null &) && sleep 5)
