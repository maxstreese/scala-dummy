#!/bin/bash

METALS_DIR="$GITPOD_REPO_ROOT/.metals"

echo "-Dsbt.coursier.home=$METALS_DIR/coursier" >> .jvmopts
echo "-Dcoursier.cache=$METALS_DIR/coursier" >> .jvmopts
echo "-Dsbt-dir=$METALS_DIR/sbt" >> .jvmopts
echo "-Dsbt-boot=$METALS_DIR/sbt/boot" >> .jvmopts
echo "-Divy=$METALS_DIR/.ivy2" >> .jvmopts

coursier fetch org.scalameta:metals_2.12:0.9.3 --cache=$METALS_DIR/coursier

sbt -Dbloop.export-jar-classifiers=sources compile bloopInstall
bloop compile --cascade scala-dummy
