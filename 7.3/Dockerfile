#target: catdvserver:7.3.5p10
FROM openjdk:8-jdk
RUN apt-get update && apt-get install -y tightvncserver icewm && apt-get clean && rm -rf /var/lib/apt/lists/*
ADD CatDVServer7.3.5p10.tgz /tmp
RUN cp -r /tmp/CatDVServer7.3.5p10/catdvServer /usr/local/ 
COPY launchServer_stdout /usr/local/catdvServer/
RUN chmod +x /usr/local/catdvServer/launchServer && \
    chmod +x /usr/local/catdvServer/controlPanel && \
    ln -s /usr/local/catdvServer/controlPanel /usr/bin/ 
COPY entrypoint.sh /entrypoint.sh
COPY vnc/xstartup /root/.vnc/
COPY vnc/passwd /root/.vnc/
ENV USER=root
WORKDIR /usr/local/catdvServer

ENTRYPOINT ["/entrypoint.sh"]
