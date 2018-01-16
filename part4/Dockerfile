FROM wendelhime/egene2:part3
ADD MakefileTRNASCAN /usr/local/genome/tRNAscan-SE-1.3.1/Makefile 
ADD initpostgres.sh /usr/bin/initpostgres.sh
ADD compileTRNAScan.sh /usr/bin/compileTRNAScan.sh

#Change alienhunter USERPATH to /usr/local/genome/alien_hunter-1.7
RUN perl -pe 's/(USERPATH=)[\/\w\-\.]+/$1=\/usr\/local\/genome\/alien_hunter\-1\.7/gm' /usr/local/genome/alien_hunter-1.7/alien_hunter > teste.log \
        && cat teste.log | echo > /usr/local/genome/alien_hunter-1.7/alien_hunter 

RUN perl -pe 's/(cd )[\/\-.\w]+/$1\/usr\/local\/genome\/interproscan\-5\.24\-63\.0/gm' /usr/local/genome/interproscan-5.24-63.0/interproscan.sh > teste.log \
        && cat teste.log | echo > /usr/local/genome/interproscan-5.24-63.0/interproscan.sh

RUN chmod +x /usr/bin/initpostgres.sh
RUN chmod +x /usr/bin/compileTRNAScan.sh

CMD ["tail", "-f", "/dev/null"] 
