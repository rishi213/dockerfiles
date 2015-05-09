FROM nightling/base

COPY source /opt/weevely3

RUN pip install -r /opt/weevely3/requirements.txt \
	&& useradd weevely

USER weevely
WORKDIR /home/weevely
ENTRYPOINT ["/opt/weevely3/weevely.py"]
