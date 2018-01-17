perl -pe 's/^(local\s+all\s+\w+\s+)peer/$1 trust/gm' /etc/postgresql/9.6/main/pg_hba.conf > teste.log
sleep 1
cp teste.log /etc/postgresql/9.6/main/pg_hba.conf
sleep 2
/etc/init.d/postgresql start
sleep 6
su - postgres -c "createuser -h $1 -p $2 -w -s -e chadouser"
sleep 2
su - postgres -c "psql -h $1 -p $2 -c \"ALTER USER chadouser with encrypted password 'egene_chado';\""
sleep 2
/etc/init.d/postgresql restart
