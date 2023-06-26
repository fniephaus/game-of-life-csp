set -e

export GRAALVM_HOME=$HOME/bin/graalvm-jdk-20.0.1+9.1/
export JAVA_HOME=$GRAALVM_HOME

mvn clean

mkdir target
ln -s $(pwd)/patterns ./target/patterns

set -x 
mvn -Pnative -Dagent=true -DskipTests package
