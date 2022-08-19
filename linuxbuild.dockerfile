FROM ghcr.io/graalvm/graalvm-ce:ol8-java17-22.1.0

WORKDIR /tmp/dist
RUN gu install native-image
CMD native-image \
  -jar /tmp/target/graalvm-scala-lambda.jar \
  -H:ReflectionConfigurationFiles=/tmp/target/classes/META-INF/native-image/reflect-config.json \
  --enable-url-protocols=http \
  -J-Xmx2G -J-Xms2G \
  bootstrap