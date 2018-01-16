FROM wendelhime/egene2:part3
ADD MakefileTRNASCAN /usr/local/genome/tRNAscan-SE-1.3.1/Makefile 
RUN cd /usr/local/genome/tRNAscan-SE-1.3.1 && \
        make && \
        make install && \
        cd ~

ADD initpostgres.sh /usr/bin/initpostgres.sh

#Change alienhunter USERPATH to /usr/local/genome/alien_hunter-1.7
RUN perl -pe 's/(USERPATH=)[\/\w\-\.]+/$1=\/usr\/local\/genome\/alien_hunter-1.7/gm' /usr/local/genome/alien_hunter-1.7/alien_hunter > teste.log \
        && cat teste.log | echo > /usr/local/genome/alien_hunter-1.7/alien_hunter 

RUN chmod +x /usr/bin/initpostgres.sh
