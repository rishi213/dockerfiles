FROM nightling/buildpack

RUN pip install https://github.com/embolalia/willie/archive/5.4.1.tar.gz \
	&& git clone https://github.com/embolalia/willie-extras.git /usr/share/willie-extras \
	&& useradd -rmd /data willie \
	&& rm -rf /usr/share/*/.git ~/.cache

USER willie
VOLUME /data
ENTRYPOINT ["willie"]
