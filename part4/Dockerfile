FROM wendelhime/egene2:part3

RUN apt-get update && \
        apt-get install -y gawk \
        gnuplot \
        coreutils \
        ghostscript \
        sed \
        python-dev \
        python \
        python3 \
        python3-dev \
        python-setuptools \
        libfile-find-rule-perl \
        sqlite3 \
        libdbd-pg-perl \
        libapache2-mod-perl2 \
        libcatalyst-perl \
        libcatalyst-engine-apache-perl \
        libcatalyst-model-cdbi-perl \
        libcatalyst-modules-extra-perl \
        libcatalyst-modules-perl \
        libcatalyst-view-tt-perl \
        libhtml-prototype-perl \
        wget && \
        ln -s /usr/bin/awk /bin/awk

RUN set PERL_MM_USE_DEFAULT=1
RUN cpan CPAN && \
        cpan Class::Load Class::Load::PP && \
        cpan Class::Load::XS Class::MOP Data::OptList && \
        cpan Moose Moose::Role Moose::Exporter Moose::Util::TypeConstraint && \
        cpan DBIx::Class DBD::Pg Catalyst::Devel Catalyst::Runtime YAML Archive::Zip File::Find::Rule && \
        cpan Catalyst::Action::REST Catalyst::ScriptRunner  Catalyst::View::TT Catalyst::View::JSON Catalyst::Model::DBIC::Schema DBIx::Class::Schema::Loader MooseX::NonMoose DBIx::Class::Helper::ResultSet::SetOperations Catalyst::Restarter Catalyst::Model::Adaptor Catalyst::Model::DBI MooseX::Storage Catalyst::Controller::REST Catalyst::Model::DBIC::Schema Archive::Zip Catalyst::Engine::Apache && \
        cpan Capture::Tiny DBI Task::Catalyst Task::Plack Reindeer && \
        cpan SQL::Library Catalyst::Model::DBI::SQL::Library Catalyst::Model::DBI

ADD MakefileTRNASCAN /usr/local/genome/tRNAscan-SE-1.3.1/Makefile 
ADD initpostgres.sh /usr/bin/initpostgres.sh
ADD EPSTools150801.tgz /usr/local/bin
ADD report_html_db.pl /usr/local/genome/egene2/bin/report_html_db.pl
RUN chmod +x /usr/bin/initpostgres.sh

RUN make clean -C /usr/local/genome/tRNAscan-SE-1.3.1 && make -C /usr/local/genome/tRNAscan-SE-1.3.1

RUN wget https://ccb.jhu.edu/software/glimmer/glimmer302b.tar.gz && \
        tar -zxvf glimmer302b.tar.gz -C /usr/local/genome && \
        make -C /usr/local/genome/glimmer3.02/src && \
        ln -s /usr/local/genome/glimmer3.02/scripts/* /usr/local/genome/bin && \
        ln -s /usr/local/genome/glimmer3.02/bin/* /usr/local/genome/bin

RUN cpan WWW::Form::UrlEncoded::XS

WORKDIR /root

RUN perl -pe 's/(USERPATH=)[\/\w\-\.]+/$1\/usr\/local\/genome\/alien_hunter\-1\.7/gm' /usr/local/genome/alien_hunter-1.7/alien_hunter > teste.log && \
        sleep 2   && \
        cat teste.log > /usr/local/genome/alien_hunter-1.7/alien_hunter  
RUN perl -pe 's/(cd )[\/\-.\w]+/$1\/usr\/local\/genome\/interproscan\-5\.24\-63\.0/gm' /usr/local/genome/interproscan-5.24-63.0/interproscan.sh > teste.log && \
        sleep 2 && \
        cat teste.log > /usr/local/genome/interproscan-5.24-63.0/interproscan.sh 
        
RUN perl -pe 's/(file_schema = ")[\w\/\-]+";/$1\/usr\/local\/genome\/egene2\/bin\/egenedb_bak";/gm' /usr/local/genome/egene2/bin/bigou_m.pl > teste.log && \
        sleep 2 && \
        cat teste.log > /usr/local/genome/egene2/bin/bigou_m.pl

RUN perl -pe 's/(\$program = ")\w+";/$1\/usr\/local\/genome\/tmhmm\/bin\/tmhmm";/gm' /usr/local/genome/egene2/bin/annotation_tmhmm.pl > teste.log && \
        sleep 2 && \
        cat teste.log > /usr/local/genome/egene2/bin/annotation_tmhmm.pl

RUN ln -s /usr/local/genome/bin/rpsblast /usr/local/genome/bin/rpsblast+

CMD ["tail", "-f", "/dev/null"] 
