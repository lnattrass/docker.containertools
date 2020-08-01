FROM python

WORKDIR /app
RUN wget -O gcr.tar.gz https://github.com/google/containerregistry/archive/v0.0.38.tar.gz \
    && tar zxvf gcr.tar.gz \
    && mv containerregistry* containerregistry 

ADD cp containerregistry/tools/* .

CMD [ "docker_puller.py" ]
