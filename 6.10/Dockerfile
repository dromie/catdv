#target: catdvserver:6.10.0
FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y tightvncserver && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY CatDVServer6.10.0.zip /tmp
RUN cd /usr/local && unzip  /tmp/CatDVServer6.10.0.zip
COPY launchServer_stdout /usr/local/catdvServer/
RUN chmod +x /usr/local/catdvServer/launchServer && \
    chmod +x /usr/local/catdvServer/launchServer_csh && \
    chmod +x /usr/local/catdvServer/controlPanel && \
    ln -s /usr/local/catdvServer/controlPanel /usr/bin/ && \
    ln -s /usr/local/catdvServer/launchServer /usr/bin/
COPY entrypoint.sh /entrypoint.sh
COPY vnc/xstartup /root/.vnc/
COPY vnc/passwd /root/.vnc/
ENV USER=root
WORKDIR /usr/local/catdvServer

ENTRYPOINT ["/entrypoint.sh"]
