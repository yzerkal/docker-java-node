FROM java:8

MAINTAINER Yurii Zerkal <zerkal.work@gmail.com>

# Install Node
RUN \
  cd /opt && \
  wget https://nodejs.org/dist/v9.3.0/node-v9.3.0-linux-x64.tar.xz && \
  tar -xzf node-v9.3.0-linux-x64.tar.xz && \
  mv node-v9.3.0-linux-x64.tar.xz node && \
  cd /usr/local/bin && \
  ln -s /opt/node/bin/* . && \
  rm -f /opt/node-v9.3.0-linux-x64.tar.xz

# Set the working dirrectory
WORKDIR /src
CMD["/bin/bash"]  
