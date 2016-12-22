
#mysql  编译 
groupadd mysql
useradd -r -g mysql mysql
time cmake \
-DCMAKE_INSTALL_PREFIX=/application/mysql \
-DSYSCONFDIR=/etc \
-DMYSQL_DATADIR=/data/mysql \
-DMYSQL_UNIX_ADDR=/tmp/mysqld.sock \
-DMYSQL_USER=mysql \
-DEXTRA_CHARSETS=all  \
-DWITH_READLINE=1 \
-DWITH_EMBEDDED_SERVER=1 \
-DENABLED_LOCAL_INFILE=1 \
-DWITH_INNOBASE_STORAGE_ENGINE=1 \
-DWITH_ARCHIVE_STORAGE_ENGINE=1 \
-DWITH_BLACKHOLE_STORAGE_ENGINE=1 \
-DDEFAULT_CHARSET=utf8 \                   
-DDEFAULT_COLLATION=utf8_general_ci \
