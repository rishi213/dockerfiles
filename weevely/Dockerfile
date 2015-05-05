FROM fedora
MAINTAINER Nightling

RUN yum install -y python-{devel,pip} \
	&& yum clean all

COPY source /opt/weevely3

RUN pip install -r /opt/weevely3/requirements.txt \
	&& useradd -M weevely

USER weevely

WORKDIR /home/weevely

ENTRYPOINT ["/opt/weevely3/weevely.py"]
