# stackhero-container-ssl-generator

```
docker build -t ssl-generator .
```

```
docker run -it \
  -e DOMAIN_MAIN=<domain1> \
  -e DOMAINS=<domain1>,<domain2> \
  -e EMAIL=<email> \
  -p 80:80 \
  -p 443:443 \
  -v /tmp/ssl-generator:/etc/letsencrypt ssl-generator
```
