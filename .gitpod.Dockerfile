FROM gitpod/workspace-full

RUN brew install scala

RUN sudo sh -c '(echo "#!/usr/bin/env sh" && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.2.0/2.13-2.2.0) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm'

RUN brew install scala coursier/formulas/coursier sbt scalaenv
