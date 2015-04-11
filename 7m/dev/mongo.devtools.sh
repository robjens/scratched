#! /usr/bin/env sh

# restore-data.sh

# preamble (settings)

# constants
port=27017
user=steven
hostname=localhost
password=j444h000r
database=sevenmatches

# compositions
folder=$(readlink -f $0)
parent=$(dirname $(readlink -f $0))
dumpdir=${parent}/dumps
latest=${parent}/dumps/$(ls -1 --sort time ${dumpdir} | head -n 1)
dirname=$(basename ${latest%.tgz})


#
# Add user to pristine mongodb using shell and js file
#
function setup_database_user()
{
    mongo <<<"
    conn = new Mongo();
    db = connect('${hostname}:${port}/${database}');
    db.createUser({user: '${user}', pwd: 'j444h000r', roles: [{role: 'userAdmin', db: '${database}'}, 'readWrite']});
    "
}

#
# Unpack mongodb archived data base dump
#
function setup_db_unpack()
{
    tar xzf $latest
}

#
# Setup mongodb stub/mock data
#
function setup_db_restore()
{
    mongorestore -h ${hostname}:${port} \
                 -d ${database} \
                 -u ${user} \
                 -p ${password} \
                 --drop --dir=${dirname}
}

#
# Remove unpacked data after import
#
function setup_db_cleanup()
{
    test ! -d ${dirname} || rm -rf ${dirname}
}


setup_db_restore
setup_db_unpack



