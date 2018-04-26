# docker-egene2
Docker-EGene2 repository

# Running

You'll need to share some directories from your host machine and the container when execute using parameter `-v`<br />
Including the directory with the sequence and configuration files which will be used, in images `wendelhime/egene2:latest` and `wendelhime/egene2:bigou` you need to use `/root`, in `wendelhime/egene2:coed` you need to use `/home/developer`

## wendelhime/egene2:latest

Start container sharing the directory to be used by container, databases files, some components which we aren't allowed to share and the connection with your PostgreSQL 

```zsh
docker run -d --name egene2 \
    -v $HOME/minibacteria:/root \
    -v /usr/local/genome/databases:/usr/local/genome/databases \
    -v /usr/local/genome/rnammer:/usr/local/genome/rnammer \
    -v /usr/local/genome/signalp-4.0:/usr/local/genome/signalp-4.0 \
    -v /usr/local/genome/tmhmm:/usr/local/genome/tmhmm \
    -v /usr/local/genome/phobius:/usr/local/genome/phobius \
    -v /usr/local/genome/trf:/usr/local/genome/trf \
    -v /var/run/postgresql/.s.PGSQL.5432:/var/run/postgresql/.s.PGSQL.5432 \
    --net=host \
    wendelhime/egene2:latest
```

Execute the following command to enter in container:

```zsh
docker exec -i -t egene2 /bin/bash
```
## wendelhime/egene2:bigou

You can execute bigou direct in command line using, remember to share your directories with the container always using `/root`:

```zsh
docker run --rm -it \
    -v $HOME/minibacteria2:/root \
    -v /usr/local/genome/databases:/usr/local/genome/databases \
    -v /usr/local/genome/rnammer:/usr/local/genome/rnammer \
    -v /usr/local/genome/signalp-4.0:/usr/local/genome/signalp-4.0 \
    -v /usr/local/genome/tmhmm:/usr/local/genome/tmhmm \
    -v /usr/local/genome/phobius:/usr/local/genome/phobius \
    -v /usr/local/genome/trf:/usr/local/genome/trf \
    -v /var/run/postgresql/.s.PGSQL.5432:/var/run/postgresql/.s.PGSQL.5432 \
    --net=host \
    wendelhime/egene2:bigou -c evidence.cnf -d minibct_db -u chadouser -p egene_chado -h localhost -o output_dir
```

## wendelhime/egene2:coed

Use this commmand to share X11:
```zsh
xhost +
```

You can execute coed interface, there is a little difference, the directory used in this container is `/home/developer`, so share the directory:

```zsh
docker run -it --rm \
    -v $HOME/minibacteria:/home/developer \
    -v /usr/local/genome/databases:/usr/local/genome/databases \
    -v /usr/local/genome/rnammer:/usr/local/genome/rnammer \
    -v /usr/local/genome/signalp-4.0:/usr/local/genome/signalp-4.0 \
    -v /usr/local/genome/tmhmm:/usr/local/genome/tmhmm \
    -v /usr/local/genome/phobius:/usr/local/genome/phobius \
    -v /usr/local/genome/trf:/usr/local/genome/trf \
    -v /var/run/postgresql/.s.PGSQL.5432:/var/run/postgresql/.s.PGSQL.5432 \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $HOME/.Xauthority:/home/developer/.Xauthority \
    -e DISPLAY=$DISPLAY \
    -e XAUTHORITY=/home/developer/.Xauthority \
    -e uid=$(id -u) \
    -e gid=$(id -g) \
    --net=host \
    wendelhime/egene2:coed
```            
