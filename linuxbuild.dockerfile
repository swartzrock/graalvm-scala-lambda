FROM oracle/graalvm-ce:1.0.0-rc16

WORKDIR /tmp/dist
CMD native-image -jar /tmp/target/graalvm-scala-lambda.jar --enable-url-protocols=http bootstrap

