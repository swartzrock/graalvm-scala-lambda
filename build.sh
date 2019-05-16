#!/bin/sh
# Compiles to Java classes, builds a jar, and then compiles to a native Linux executable 

set -e

mkdir -p dist
sbt clean assembly
docker build -f linuxbuild.dockerfile -t linuxbuild .
docker run -v "$(pwd -P)/target/scala-2.12":/tmp/target -v "$(pwd -P)/dist":/tmp/dist linuxbuild

