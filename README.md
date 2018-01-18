# docker-egene2
Docker-EGene2 repository

# wendelhime/egene2:part4
```zsh
docker run -d --name egene2 \                                                                                                                                                                                                                                    
    -v /home/wendelhlc/minibacteria:/root \
    -v /usr/local/genome/databases:/usr/local/genome/databases \
    -v /usr/local/genome/rnammer:/usr/local/genome/rnammer \
    -v /usr/local/genome/signalp-4.0:/usr/local/genome/signalp-4.0 \
    -v /usr/local/genome/tmhmm:/usr/local/genome/tmhmm \
    -v /usr/local/genome/phobius:/usr/local/genome/phobius \
    -v /usr/local/genome/trf:/usr/local/genome/trf \
    -it wendelhime/egene2:part4 /bin/bash
```

```zsh
docker exec -i -t egene2 /bin/bash
```

```zsh
compileTRNAScan.sh
initpostgres.sh
```

# wendelhime/egene2:coed
```zsh
docker run -it --rm \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            -v $HOME/.Xauthority:/home/developer/.Xauthority \
            -e DISPLAY=$DISPLAY \
            -e XAUTHORITY=/home/developer/.Xauthority \
            -e uid=$(id -u) \
            -e gid=$(id -g) \
            --net=host \
            wendelhime/egene2:coed
```            
