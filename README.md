# webmin-squid-on-container
squid proxy with webmin as UI on Ubuntu 20.04 container 
# How to run this with docker-compose 
docker-compose up -d
# How to run it with docker cli:
```
docker run --rm -d --name webmin-squid -p 10000:10000 -p 3128:3128 \
-v wconfig:/etc/webmin \
-v sconfig:/etc/squid \
-v scache:/var/spool/squid \
trucv/webmin-squid:latest
```
# Reset root password before login
```
docker exec -ti webmin-squid passwd 
New password: 
Retype new password: 
passwd: password updated successfully
```
# Webmin should be ready at:
https://your-docker-host-IP:10000 \
After login access squid proxy module on the side menu \
Unused Modules  -> Squid Proxy Server \
You should initial proxy cache before start squid the first time

