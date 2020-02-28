#docker rmi iredmail --force
#docker build --no-cache  -t iredmail:latest build
docker build -t iredmail:ubuntu mysql/
docker run --rm -ti --name iredmail -h mail.example.com -e MYSQL_ROOT_PASSWORD=yourpass -e POSTMASTER_PASSWORD={PLAIN}pass -p 80:80 -p 443:443 iredmail:ubuntu


#rm -rf tmp/mysql/* tmp/vmail/*
#docker run --privileged -p 80:80 -p 443:443 \
#           -v /Users/milos/tmp/iredmail/lejmr/tmp/mysql:/var/lib/mysql \
#           -v /Users/milos/tmp/iredmail/lejmr/tmp/vmail:/var/vmail \
#           --name=iredmail iredmail:latest /sbin/my_init

#docker run --privileged -p 80:80 -p 443:443 --name=iredmail iredmail:latest /sbin/my_init

# docker run --privileged -p 80:80 -p 443:443 \
#            -h mail.example.com \
#            -e "SOGO_WORKERS=1" \
#            -e "IREDAPD_PLUGINS=['reject_null_sender', 'throttle', 'amavisd_wblist', 'sql_alias_access_policy']" \
#            -e "TIMEZONE=Europe/Prague" \
#            -e "POSTMASTER_PASSWORD={PLAIN}pass" \
#            -e "MYSQL_ROOT_PASSWORD=pass" \
#            --name=iredmail iredmail:ubuntu
           
           
# exit 0

# docker run --privileged -p 80:80 -p 443:443 \
#            -e "DOMAIN=example.com" -e "HOSTNAME=mail" \
#            -e "SOGO_WORKERS=1" \
#            -e "IREDAPD_PLUGINS=['reject_null_sender', 'throttle', 'amavisd_wblist', 'sql_alias_access_policy']" \
#            -e "TIMEZONE=Europe/Bratislava" \
#            -e "POSTMASTER_PASSWORD={PLAIN}heslo" \
#            -e "MYSQL_ROOT_PASSWORD=pass2" \
#            -v /home/milos/tmp/iredmail/lejmr/tmp/vmail:/var/vmail \
#            -v /home/milos/tmp/iredmail/lejmr/tmp/clamav:/var/lib/clamav \
#            --name=iredmail iredmail:ubuntu

# #           -v /Users/milos/tmp/iredmail/lejmr/tmp/mysql:/var/lib/mysql \
# #  {SSHA}Q61OCjQ8niwkvZEoeeEusokemJhvC5QLCHh9Qg==

# docker run --privileged -p 80:80 -p 443:443 \
#            -e "DOMAIN=lejmr.com" -e "HOSTNAME=mail" \
#            -e "SOGO_WORKERS=1" \
#            -e "IREDAPD_PLUGINS=['reject_null_sender', 'throttle', 'amavisd_wblist', 'sql_alias_access_policy']" \
#            -e "TIMEZONE=Europe/Prague" \
#            -e "POSTMASTER_PASSWORD={PLAIN}heslo" \
#            -e "MYSQL_ROOT_PASSWORD=heslo" \
#            -v /home/milos/Dropbox/Projekty/Dockerovani/iredmail/tmp/iredmail/mysql/:/var/lib/mysql \
#            -v /home/milos/Dropbox/Projekty/Dockerovani/iredmail/tmp/iredmail/vmail/:/var/vmail \
#            --name=iredmail iredmail:latest
           

# docker rm $(docker ps -aq)    
# docker run --privileged -p 80:80 -p 443:443 \
#            -e "DOMAIN=lejmr.com" -e "HOSTNAME=mail" \
#            -e "SOGO_WORKERS=1" \
#            -e "IREDAPD_PLUGINS=['reject_null_sender', 'throttle', 'amavisd_wblist', 'sql_alias_access_policy']" \
#            -e "TIMEZONE=Europe/Prague" \
#            -e "POSTMASTER_PASSWORD={PLAIN}heslo" \
#            -e "MYSQL_ROOT_PASSWORD=heslo" \
#            --name=iredmail lejmr/iredmail:mysql-0.9.6
