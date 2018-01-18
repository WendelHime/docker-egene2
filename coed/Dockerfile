FROM wendelhime/egene2:part4
RUN apt-get update && apt-get install -y \
        libx11-6 libxext-dev libxrender-dev libxtst-dev \
        --no-install-recommends \
        && rm -rf /var/lib/apt/lists/* 

RUN apt-get update && \
        apt-get install -y sudo
RUN useradd developer
RUN export uid=${UID} gid=${GID} && \
    mkdir -p /home/developer && \
    mkdir -p /etc/sudoers.d && \
    echo "developer:x:${uid}:${gid}:Developer,,,:/home/developer:/bin/bash" >> /etc/passwd && \
    echo "developer:x:${uid}:" >> /etc/group && \
    echo "developer ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/developer && \
    chmod 0440 /etc/sudoers.d/developer && \
    chown ${uid}:${gid} -R /home/developer

USER developer
ENV HOME /home/developer
ENTRYPOINT ["coed"]
