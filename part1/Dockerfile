FROM debian:stretch
MAINTAINER Wendel Hime Lino Castro <wendelhime@hotmail.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y  build-essential wget apt-utils libpq-dev gcc vim curl ssh perl-base perl perl-doc python3 python2.7
RUN apt-get install -y  apache2
RUN apt-get install -y  default-jre
RUN apt-get install -y  default-jdk
RUN apt-get install -y  software-properties-common
RUN apt-get install -y  libboost-iostreams-dev zlib1g-dev
RUN apt-get install -y  libgsl-dev libsqlite3-dev libmysql++-dev libboost-graph-dev libsuitesparse-dev liblpsolve55-dev bamtools libbamtools-dev
RUN apt-get install -y  automake  libbz2-dev 
RUN apt-get install -y  libxml2


ENV JAVA_HOME           /usr/lib/jvm/java-8-oracle
ENV APACHE_RUN_USER     www-data
ENV APACHE_RUN_GROUP    www-data
ENV APACHE_PID_FILE     /var/run/apache2.pid
ENV APACHE_RUN_DIR      /var/run/apache2
ENV APACHE_LOCK_DIR     /var/lock/apache2
ENV APACHE_LOG_DIR      /var/log/apache2
ENV LANG                C

RUN apt-get install -y  libfile-find-rule-perl sqlite3 libdbd-pg-perl libapache2-mod-perl2 postgresql-9.6
RUN PERL_MM_USE_DEFAULT=1 cpan CPAN
RUN PERL_MM_USE_DEFAULT=1 cpan Class::Load Class::Load::PP

RUN PERL_MM_USE_DEFAULT=1 cpan Class::Load::XS Class::MOP Data::OptList
RUN PERL_MM_USE_DEFAULT=1 cpan Moose Moose::Role Moose::Exporter Moose::Util::TypeConstraint
RUN PERL_MM_USE_DEFAULT=1 cpan DBIx::Class DBD::Pg Catalyst::Devel Catalyst::Runtime YAML Archive::Zip File::Find::Rule
RUN PERL_MM_USE_DEFAULT=1 cpan Catalyst::Action::REST Catalyst::ScriptRunner  Catalyst::View::TT Catalyst::View::JSON Catalyst::Model::DBIC::Schema DBIx::Class::Schema::Loader MooseX::NonMoose DBIx::Class::Helper::ResultSet::SetOperations Catalyst::Restarter Catalyst::Model::Adaptor Catalyst::Model::DBI MooseX::Storage Catalyst::Controller::REST Catalyst::Model::DBIC::Schema Archive::Zip Catalyst::Engine::Apache

RUN PERL_MM_USE_DEFAULT=1 cpan Capture::Tiny DBI Task::Catalyst Task::Plack Reindeer

RUN PERL_MM_USE_DEFAULT=1 cpan SQL::Library Catalyst::Model::DBI::SQL::Library Catalyst::Model::DBI

RUN PERL_MM_USE_DEFAULT=1 cpan J/JV/JV/Getopt-Long-2.50.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan J/JP/JPEACOCK/version-0.9918.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan C/CJ/CJM/IO-HTML-1.001.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan M/MU/MUIR/modules/Text-Tabs+Wrap-2013.0523.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan A/AU/AUDREYT/Module-Signature-0.81.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/Archive-Tar-2.26.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/MIME-Base64-3.15.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/HTTP-Negotiate-6.01.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan L/LE/LEEJO/Test-LeakTrace-0.16.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/Module-CoreList-5.20170923.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan M/MS/MSHELOR/Digest-SHA-5.97.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TODDR/IO-Tty-1.12.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RU/RURBAN/Filter-1.57.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan F/FL/FLORA/Text-Abbrev-1.02.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/EX/EXODIST/Test-Simple-1.302096.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/ET/ETHER/ExtUtils-Manifest-1.70.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan J/JE/JESSE/Test-1.26.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/HTTP-Daemon-6.01.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan O/OA/OALDERS/Net-HTTP-6.17.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TY/TYEMQ/Algorithm-Diff-1.1903.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PE/PEVANS/Socket-2.024.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/ET/ETHER/Try-Tiny-0.28.tar.gz
RUN apt-get install -y libexpat1-dev
RUN PERL_MM_USE_DEFAULT=1 cpan M/MI/MIROD/XML-Twig-3.52.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan J/JK/JKEENAN/File-Path-2.15.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TODDR/Exporter-5.72.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan H/HA/HAARG/Test-Needs-0.002005.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TI/TIMB/DBI-1.637.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/WWW-RobotRules-6.02.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TM/TMTM/Class-Data-Inheritable-0.08.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/Test-Fatal-0.014.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan M/MA/MALLEN/Test-RequiresInternet-0.05.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan C/CJ/CJFIELDS/Bio-Coordinate-1.007001.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan I/IN/INGY/Test-YAML-1.06.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan K/KH/KHW/Pod-Simple-3.35.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PL/PLICEASE/File-Which-1.22.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/CPAN-Meta-YAML-0.018.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/Carp-1.38.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan L/LE/LEONT/Module-Build-0.4224.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TOMHUGHES/IO-Zlib-1.10.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan A/AM/AMBS/ExtUtils-CBuilder-0.280226.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/Test-Deep-1.127.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/IO-String-1.08.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/HTTP-Date-6.02.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PE/PETDANCE/HTML-Tagset-3.20.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/IPC-Cmd-0.98.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SM/SMUELLER/Data-Dumper-2.161.tar.gz
RUN apt-get install -y pkg-config libgd-dev 
RUN cpan GD::Polygon GD::Image
RUN PERL_MM_USE_DEFAULT=1 cpan C/CJ/CJFIELDS/Bio-Graphics-2.40.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SH/SHAY/libnet-3.10.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan L/LE/LEEJO/CGI-4.36.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PM/PMQS/Compress-Raw-Bzip2-2.074.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/Capture-Tiny-0.46.tar.gz
RUN apt-get install -y libxml2-dev graphviz-dev libgraphviz-perl
RUN PERL_MM_USE_DEFAULT=1 cpan C/CJ/CJFIELDS/BioPerl-1.007002.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan I/IN/INGY/Spiffy-0.46.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan I/IS/ISHIGAKI/JSON-PP-2.94.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/ET/ETHER/URI-1.72.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan A/AN/ANDK/CPAN-2.16.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan O/OA/OALDERS/libwww-perl-6.27.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/ExtUtils-MakeMaker-7.30.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/CPAN-Meta-2.150010.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RE/REHSACK/List-MoreUtils-0.425.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RE/REHSACK/List-MoreUtils-XS-0.423.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan M/MA/MAREKR/Pod-Usage-1.69.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DANKOGAI/Encode-2.92.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan A/AD/ADAMK/Test-NoWarnings-1.04.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/File-Temp-0.2304.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan S/SM/SMUELLER/lib-0.63.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/PathTools-3.62.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan A/AM/AMS/Storable-2.51.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RU/RUZ/GDGraph-1.54.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan C/CM/CMUNGALL/Data-Stag-0.14.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RC/RCLAMP/Text-Glob-0.11.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan I/IN/INGY/Test-Base-0.88.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan O/OA/OALDERS/HTTP-Cookies-6.04.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RU/RURBAN/GD-2.66.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DC/DCANTRELL/Test-Differences-0.64.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/File-Listing-6.04.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan O/OA/OALDERS/HTTP-Message-6.13.tar.gz
RUN apt-get install -y libdb-dev
RUN PERL_MM_USE_DEFAULT=1 cpan P/PM/PMQS/DB_File-1.840.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/HTML-Parser-3.72.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan P/PM/PMQS/Compress-Raw-Zlib-2.074.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/Perl-OSType-1.010.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan O/OV/OVID/Test-Most-0.35.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan T/TO/TODDR/XML-Parser-2.44.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BIGJ/Test-Warn-0.32.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan R/RJ/RJBS/if-0.0606.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan L/LE/LEONT/Test-Harness-3.39.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan G/GA/GAAS/LWP-MediaTypes-6.02.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan J/JE/JESSE/Locale-Maketext-Simple-0.21.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/HTTP-Tiny-0.070.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan M/MV/MVERB/GDTextUtil-0.86.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan E/EX/EXODIST/Test-Exception-0.43.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/Sub-Uplevel-0.2800.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/Module-Load-0.32.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan B/BI/BINGOS/Module-Load-Conditional-0.68.tar.gz
RUN PERL_MM_USE_DEFAULT=1 cpan XML::SAX XML::NamespaceSupport
RUN PERL_MM_USE_DEFAULT=1 cpan XML::LibXML 
RUN apt-get install -y xsltproc libxslt1.1 libxslt1-dev libxml-libxslt-perl 
RUN perl -MCPAN -e "CPAN::Shell->notest('install', 'GO::Parser')"
RUN PERL_MM_USE_DEFAULT=1 cpan D/DA/DAGOLDEN/CPAN-Meta-Requirements-2.140.tar.gz

RUN a2enmod perl
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
