FROM python

WORKDIR /app
RUN pip install six httplib2 oauth2client \
    && wget -O gcr.tar.gz https://github.com/google/containerregistry/archive/v0.0.38.tar.gz \
    && tar zxvf gcr.tar.gz \
    && mv containerregistry* containerregistry \
    && cp containerregistry/tools/* . 

CMD [ "docker_puller.py" ]