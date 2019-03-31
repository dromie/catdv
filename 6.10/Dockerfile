FROM openjdk:8-jdk
ADD CatDVServer6.10.0.tar.gz /usr/local/
COPY launchServer_stdout /usr/local/catdvServer/
RUN chmod +x /usr/local/catdvServer/launchServer && \
    chmod +x /usr/local/catdvServer/launchServer_csh && \
    chmod +x /usr/local/catdvServer/controlPanel && \
    ln -s /usr/local/catdvServer/controlPanel /usr/bin/ && \
    ln -s /usr/local/catdvServer/launchServer /usr/bin/
WORKDIR /usr/local/catdvServer

CMD ["/usr/local/catdvServer/launchServer_stdout"]
