FROM nightling/buildpack

RUN pip install git+https://github.com/embolalia/willie.git \
	&& git clone https://github.com/embolalia/willie-extras.git /usr/share/willie-extras \
	&& useradd -rmd /data willie \
	&& rm -rf /usr/share/*/.git ~/.cache

USER willie
VOLUME /data
ENTRYPOINT ["willie"]
