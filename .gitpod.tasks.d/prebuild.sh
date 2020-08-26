#!/bin/bash

METALS_DIR="$GITPOD_REPO_ROOT/.metals"

echo "-Dcoursier.cache=$METALS_DIR/coursier" >> .jvmopts
echo "-Dsbt.boot.directory=$METALS_DIR/sbt/boot" >> .jvmopts
echo "-Dsbt.coursier.home=$METALS_DIR/coursier" >> .jvmopts
echo "-Dsbt.global.base=$METALS_DIR/sbt" >> .jvmopts
echo "-Dsbt.ivy.home=$METALS_DIR/.ivy2" >> .jvmopts

coursier fetch org.scalameta:metals_2.12:0.9.3 \
         --cache=$METALS_DIR/coursier \
         -p \
         --ttl Inf \
         -r bintray:scalacenter/releases \
         -r sonatype:public \
         -r sonatype:snapshots \
         -p

sbt -Dbloop.export-jar-classifiers=sources compile bloopInstall
bloop compile --cascade scala-dummy
