# stackhero-container-ssl-generator

```
docker build -t ssl-generator .
```

```
docker run -it \
  -e DOMAIN_MAIN=bactotest.stackhero.io \
  -e DOMAINS=bactotest.stackhero.io \
  -e EMAIL=letsencrypt@stackhero.io \
  -p 80:80 \
  -v /tmp/ssl-generator:/etc/letsencrypt ssl-generator
```
