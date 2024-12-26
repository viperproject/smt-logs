if [ ! -f $(dirname "$0")/viperserver/target/scala-*/viperserver.jar ]; then
  cd $(dirname "$0")/viperserver && sbt assembly
fi

cd $(dirname $0)
pip install -r viper_client/requirements.txt
python viper_client/client.py -p 50424 -f $0 &> /dev/null || (Z3_EXE=$(which z3) java -Xss1024m -Xmx4024m -jar viperserver/target/scala-*/viperserver.jar -p 50424 > /dev/null &)
