# docker-s2i
s2i binary in a docker image

```
docker run -v /var/run/docker.sock:/var/run/docker.sock -it debianmaster/s2i sh
$ s2i build https://github.com/openshift/django-ex centos/python-35-centos7 hello-python
```
