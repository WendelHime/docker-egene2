FROM wendelhime/egene2:part2squashed

ADD bin/infernal-1.1.1          /usr/local/genome/infernal-1.1.1
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/bandcyk-montecarlo-test    /usr/local/genome/bin/bandcyk-montecarlo-test
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/bandcyk-truncation-test    /usr/local/genome/bin/bandcyk-truncation-test
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmalign /usr/local/genome/bin/cmalign
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmbuild    /usr/local/genome/bin/cmbuild
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmcalibrate    /usr/local/genome/bin/cmcalibrate
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmconvert    /usr/local/genome/bin/cmconvert
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmemit /usr/local/genome/bin/cmemit
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmfetch /usr/local/genome/bin/cmfetch
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmpress /usr/local/genome/bin/cmpress
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmscan /usr/local/genome/bin/cmscan
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmsearch /usr/local/genome/bin/cmsearch
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cmstat /usr/local/genome/bin/cmstat
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/cp9-test /usr/local/genome/bin/cp9-test
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/sub_cm-test /usr/local/genome/bin/sub_cm-test
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/trcyk /usr/local/genome/bin/trcyk
RUN ln -s   /usr/local/genome/infernal-1.1.1/src/truncyk_check /usr/local/genome/bin/truncyk_check

ADD bin/interproscan-5.24-63.0  /usr/local/genome/interproscan-5.24-63.0
RUN ln -s   /usr/local/genome/interproscan-5.24-63.0/interproscan.sh    /usr/local/genome/bin/interproscan

ADD bin/mreps-2.5 /usr/local/genome/mreps-2.5
RUN ln -s   /usr/local/genome/mreps-2.5/mreps   /usr/local/genome/bin/mreps

ADD bin/ncbi-blast-2.5.0+ /usr/local/genome/ncbi-blast-2.5.0+
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastdb_aliastool  /usr/local/genome/bin/blastdb_aliastool
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastdbcmd         /usr/local/genome/bin/blastdbcmd
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastn             /usr/local/genome/bin/blastn
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastx             /usr/local/genome/bin/blastx
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/deltablast         /usr/local/genome/bin/deltablast
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/legacy_blast.pl    /usr/local/genome/bin/legacy_blast.pl  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/makembindex        /usr/local/genome/bin/makembindex 
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/psiblast           /usr/local/genome/bin/psiblast 
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/rpstblastn         /usr/local/genome/bin/rpstblastn 
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/tblastn            /usr/local/genome/bin/tblastn   
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/update_blastdb.pl  /usr/local/genome/bin/update_blastdb.pl  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastdbcheck       /usr/local/genome/bin/blastdbcheck  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blast_formatter    /usr/local/genome/bin/blast_formatter  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/blastp             /usr/local/genome/bin/blastp   
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/convert2blastmask  /usr/local/genome/bin/convert2blastmask  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/dustmaskerblastdbcmd  /usr/local/genome/bin/dustmaskerblastdbcmd       
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/makeblastdb        /usr/local/genome/bin/makeblastdb  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/makeprofiledb      /usr/local/genome/bin/makeprofiledb  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/rpsblast           /usr/local/genome/bin/rpsblast  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/segmasker          /usr/local/genome/bin/segmasker  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/tblastx            /usr/local/genome/bin/tblastx  
RUN ln -s /usr/local/genome/ncbi-blast-2.5.0+/bin/windowmasker       /usr/local/genome/bin/windowmasker  
 
ADD bin/phd2fasta   /usr/local/genome/phd2fasta
RUN ln -s   /usr/local/genome/phd2fasta/phd2fasta  /usr/local/genome/bin/phd2fasta

ADD bin/phrap       /usr/local/genome/phrap
RUN ln -s   /usr/local/genome/phrap/cross_match /usr/local/genome/bin/cross_match
RUN ln -s   /usr/local/genome/phrap/phrap   /usr/local/genome/bin/phrap
RUN ln -s   /usr/local/genome/phrap/phrapview   /usr/local/genome/bin/phrapview
RUN ln -s   /usr/local/genome/phrap/swat    /usr/local/genome/bin/swat

ADD bin/phred       /usr/local/genome/phred
RUN ln -s  /usr/local/genome/phred/phred    /usr/local/genome/bin/phred
ENV PHRED_PARAMETER_FILE /usr/local/genome/phred/phredpar.dat

ADD bin/rbsfinder   /usr/local/genome/rbsfinder
RUN ln -s /usr/local/genome/rbsfinder  /usr/local/genome/bin/rbs_finder.pl

ADD bin/string      /usr/local/genome/string
RUN ln -s /usr/local/genome/string/string_lbm /usr/local/genome/bin/string

ADD bin/transterm_hp_v2.09  /usr/local/genome/transterm
RUN ln -s /usr/local/genome/transterm/transterm     /usr/local/genome/bin/transterm

ADD bin/tRNAscan-SE-1.3.1  /usr/local/genome/tRNAscan-SE-1.3.1
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/checkversion.pl  /usr/local/genome/bin/checkversion.pl
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/covels-SE    /usr/local/genome/bin/covels-SE
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/coves-SE /usr/local/genome/bin/coves-SE
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/eufindtRNA   /usr/local/genome/bin/eufindtRNA
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/fasta2gsi.pl /usr/local/genome/bin/fasta2gsi.pl
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/instman.pl   /usr/local/genome/bin/instman.pl
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/sstofa.pl    /usr/local/genome/bin/sstofa.pl
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/trnascan-1.4 /usr/local/genome/bin/trnascan-1.4
RUN ln -s   /usr/local/genome/tRNAscan-SE-1.3.1/tRNAscan-SE  /usr/local/genome/bin/tRNAscan-SE

ENV PATH="${PATH}:/usr/local/genome/bin"
ENV PATH="${PATH}:/usr/local/genome/egene2/bin"
ENV PERL5LIB="${PERL5LIB}:/usr/local/genome/tRNAscan-SE-1.3.1:/usr/local/genome/egene2/share/perl/5.10.1"

CMD ["tail -f /dev/null"]
WORKDIR /root
