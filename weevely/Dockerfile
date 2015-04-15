FROM fedora
MAINTAINER Nightling

RUN yum install -y git python-pip \
	&& yum clean all

RUN git clone https://github.com/epinna/weevely3.git /opt/weevely3 \
	&& pip install -r /opt/weevely3/requirements.txt

RUN useradd -M weevely

USER weevely

WORKDIR /home/weevely

ENTRYPOINT ["/opt/weevely3/weevely.py"]
