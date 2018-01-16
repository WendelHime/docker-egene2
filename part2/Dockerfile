FROM wendelhime/egene2:part1
RUN PERL_MM_USE_DEFAULT=1 cpan J/JS/JSTOWE/TermReadKey-2.37.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan IO #G/GB/GBARR/IO-1.25.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan J/JA/JACOBY/Expect-1.35.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan N/NE/NEILB/Text-Diff-1.45.tar.gz

RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/Digest-MD5-2.55.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan I/IN/INGY/YAML-1.23.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan C/CO/CORION/parent-0.236.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SA/SAPER/XSLoader-0.24.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TOBYINK/Exporter-Tiny-1.000000.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PE/PEVANS/Scalar-List-Utils-1.49.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DR/DROLSKY/Devel-StackTrace-2.02.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan N/NE/NEILB/Pod-Escapes-1.07.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DR/DROLSKY/Exception-Class-1.43.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PM/PMQS/IO-Compress-2.074.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TODDR/IPC-Run-0.96.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RR/RRA/podlators-4.09.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SH/SHLOMIF/Statistics-Descriptive-3.0612.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DR/DROLSKY/Time-Local-1.25.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/base-2.23.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/Digest-1.17.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/Params-Check-0.38.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/Encode-Locale-1.05.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/ET/ETHER/Module-Metadata-1.000033.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SM/SMUELLER/ExtUtils-ParseXS-3.35.tar.gz 


RUN mkdir -p /usr/local/genome/bin
RUN export PATH=$PATH:/usr/local/genome/bin 

#DEPENDENCY: libgsl-dev libsqlite3-dev libmysql++-dev libboost-graph-dev libsuitesparse-dev liblpsolve55-dev bamtools libbamtools-dev
ADD bin/augustus_dir        /usr/local/genome/augustus.2.5.5
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/augustus /usr/local/genome/bin/augustus
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/consensusFinder /usr/local/genome/bin/consensusFinder 
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/curve2hints /usr/local/genome/bin/curve2hints
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/etraining /usr/local/genome/bin/etraining
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/fastBlockSearch /usr/local/genome/bin/fastBlockSearch
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/makedepend.pl /usr/local/genome/bin/makedepend.pl
RUN ln -s   /usr/local/genome/augustus.2.5.5/src/prepareAlign /usr/local/genome/bin/prepareAlign

#DEPENDENCY: JAVA AND PERL
ADD bin/alien_hunter-1.7    /usr/local/genome/alien_hunter-1.7
RUN ln -s   /usr/local/genome/alien_hunter-1.7/alien_hunter /usr/local/genome/bin/alien_hunter

#DEPENDENCY: automake  zlib-dev  libbz2-dev
ADD bin/bfast-0.7.0a        /usr/local/genome/bfast-0.7.0a
RUN ln -s   /usr/local/genome/bfast-0.7.0a/bfast/bfast  /usr/local/genome/bin/bfast

ADD bin/coed2               /usr/local/genome/coed2
RUN ln -s   /usr/local/genome/coed2/coed.pl /usr/local/genome/bin/coed

ADD bin/consed              /usr/local/genome/consed
RUN ln -s   /usr/local/genome/consed/misc/mktrace/mktrace   /usr/local/genome/bin/mktrace
RUN ln -s   /usr/local/genome/consed/scripts/ace2Fasta.perl /usr/local/genome/bin/ace2Fasta.perl
RUN ln -s   /usr/local/genome/consed/scripts/ace2Oligos.perl    /usr/local/genome/bin/ace2Oligos.perl
RUN ln -s   /usr/local/genome/consed/scripts/add454Reads.perl   /usr/local/genome/bin/add454Reads.perl
RUN ln -s   /usr/local/genome/consed/scripts/addReads2Consed.perl   /usr/local/genome/bin/addReads2Consed.perl
RUN ln -s   /usr/local/genome/consed/scripts/addSolexaReads.perl    /usr/local/genome/bin/addSolexaReads.perl
RUN ln -s   /usr/local/genome/consed/scripts/alignSolexaReads2Refs.perl /usr/local/genome/bin/alignSolexaReads2Refs.perl
RUN ln -s   /usr/local/genome/consed/scripts/amplifyTranscripts.perl    /usr/local/genome/bin/amplifyTranscripts.perl
RUN ln -s   /usr/local/genome/consed/scripts/countEditedBases.perl  /usr/local/genome/bin/countEditedBases.perl
RUN ln -s   /usr/local/genome/consed/scripts/determineReadTypes.perl    /usr/local/genome/bin/determineReadTypes.perl
RUN ln -s   /usr/local/genome/consed/scripts/fasta2Ace.perl /usr/local/genome/bin/fasta2Ace.perl
RUN ln -s   /usr/local/genome/consed/scripts/fasta2Phd.perl /usr/local/genome/bin/fasta2Phd.perl
RUN ln -s   /usr/local/genome/consed/scripts/fasta2PhdBall.perl /usr/local/genome/bin/fasta2PhdBall.perl
RUN ln -s   /usr/local/genome/consed/scripts/filter454Reads.perl    /usr/local/genome/bin/filter454Reads.perl
RUN ln -s   /usr/local/genome/consed/scripts/findSequenceMatchesForConsed.perl  /usr/local/genome/bin/findSequenceMatchesForConsed.perl
RUN ln -s   /usr/local/genome/consed/scripts/fixContigEnd.perl  /usr/local/genome/bin/fixContigEnd.perl
RUN ln -s   /usr/local/genome/consed/scripts/lib2Phd.perl   /usr/local/genome/bin/lib2Phd.perl
RUN ln -s   /usr/local/genome/consed/scripts/makePhdBall.perl   /usr/local/genome/bin/makePhdBall.perl
RUN ln -s   /usr/local/genome/consed/scripts/orderPrimerPairs.perl  /usr/local/genome/bin/orderPrimerPairs.perl
RUN ln -s   /usr/local/genome/consed/scripts/phaster2Ace.perl   /usr/local/genome/bin/phaster2Ace.perl
RUN ln -s   /usr/local/genome/consed/scripts/phaster2Miniassembly.perl  /usr/local/genome/bin/phaster2Miniassembly.perl
RUN ln -s   /usr/local/genome/consed/scripts/phd2Ace.perl   /usr/local/genome/bin/phd2Ace.perl
RUN ln -s   /usr/local/genome/consed/scripts/phredPhrap /usr/local/genome/bin/phredPhrap
RUN ln -s   /usr/local/genome/consed/scripts/removeReads    /usr/local/genome/bin/removeReads
RUN ln -s   /usr/local/genome/consed/scripts/revertToUneditedRead   /usr/local/genome/bin/revertToUneditedRead
RUN ln -s   /usr/local/genome/consed/scripts/selectRegions.perl /usr/local/genome/bin/selectRegions.perl
RUN ln -s   /usr/local/genome/consed/scripts/tagRepeats.perl    /usr/local/genome/bin/tagRepeats.perl
RUN ln -s   /usr/local/genome/consed/scripts/testSocket.perl    /usr/local/genome/bin/testSocket.perl
RUN ln -s   /usr/local/genome/consed/scripts/transferConsensusTags.perl /usr/local/genome/bin/transferConsensusTags.perl

ADD bin/dgpi                /usr/local/genome/dgpi
RUN ln -s   /usr/local/genome/dgpi/dgpi /usr/local/genome/bin/dgpi

ADD bin/egene2              /usr/local/genome/egene2
RUN export  PATH=$PATH:/usr/local/genome/egene2/bin
RUN export  PERL5LIB=$PERL5LIB:/usr/local/genome/egene2/share/perl/5.10.1 

ADD bin/hmmer-3.1b2			/usr/local/genome/hmmer-3.0
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-afetch	/usr/local/genome/bin/esl-afetch
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-alimanip   /usr/local/genome/bin/esl-alimanip
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-alimap	/usr/local/genome/bin/esl-alimap
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-alimask	/usr/local/genome/bin/esl-alimask
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-alimerge   /usr/local/genome/bin/esl-alimerge
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-alistat	/usr/local/genome/bin/esl-alistat
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-cluster	/usr/local/genome/bin/esl-cluster
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-compalign  /usr/local/genome/bin/esl-compalign
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-compstruct	/usr/local/genome/bin/esl-compstruct
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-construct  /usr/local/genome/bin/esl-construct
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-histplot   /usr/local/genome/bin/esl-histplot
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-mask   /usr/local/genome/bin/esl-mask
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-reformat   /usr/local/genome/bin/esl-reformat
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-selectn	/usr/local/genome/bin/esl-selectn
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-seqstat	/usr/local/genome/bin/esl-seqstat
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-sfetch	/usr/local/genome/bin/esl-sfetch
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-shuffle	/usr/local/genome/bin/esl-shuffle
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-ssdraw	/usr/local/genome/bin/esl-ssdraw
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/esl-weight	/usr/local/genome/bin/esl-weight
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmalign   /usr/local/genome/bin/hmmalign
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmbuild   /usr/local/genome/bin/hmmbuild
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmconvert	/usr/local/genome/bin/hmmconvert
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmemit	/usr/local/genome/bin/hmmemit
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmfetch   /usr/local/genome/bin/hmmfetch
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmpress   /usr/local/genome/bin/hmmpress
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmscan	/usr/local/genome/bin/hmmscan
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmsearch  /usr/local/genome/bin/hmmsearch
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmsim	/usr/local/genome/bin/hmmsim
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/hmmstat	/usr/local/genome/bin/hmmstat
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/jackhmmer  /usr/local/genome/bin/jackhmmer
RUN	ln -s 	/usr/local/genome/hmmer-3.0/binaries/phmmer	/usr/local/genome/bin/phmmer
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-alimanip.itest.pl	/usr/local/genome/bin/esl-alimanip.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-alimap.itest.pl  /usr/local/genome/bin/esl-alimap.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-alimask.itest.pl	/usr/local/genome/bin/esl-alimask.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-alimerge.itest.pl	/usr/local/genome/bin/esl-alimerge.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-alistat.itest.pl	/usr/local/genome/bin/esl-alistat.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-compalign.itest.pl   /usr/local/genome/bin/esl-compalign.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-construct.itest.pl   /usr/local/genome/bin/esl-construct.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-mask.itest.pl	/usr/local/genome/bin/esl-mask.itest.pl
RUN	ln -s 	/usr/local/genome/hmmer-3.0/easel/miniapps/esl-shuffle.itest.pl	/usr/local/genome/bin/esl-shuffle.itest.pl
 
RUN a2enmod perl
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"] 






