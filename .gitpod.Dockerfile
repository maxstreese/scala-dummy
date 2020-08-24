FROM gitpod/workspace-full

RUN bash -c ". /home/gitpod/.sdkman/bin/sdkman-init.sh && \
             sdk install java 20.2.0.r11-grl && \
             sdk default java 20.2.0.r11-grl && \
             sdk install scala && \
             sdk install sbt"

RUN sudo bash -c "(echo '#!/usr/bin/env sh' && curl -L https://github.com/lihaoyi/Ammonite/releases/download/2.2.0/2.13-2.2.0) > /usr/local/bin/amm && chmod +x /usr/local/bin/amm"
