FROM fedora
MAINTAINER Nightling

ADD http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm /tmp/skype.rpm

RUN yum install -y dejavu-sans-fonts dejavu-serif-fonts \
	&& yum localinstall -y /tmp/skype.rpm \
	&& yum clean all \
	&& rm -rf /tmp/* \
	&& useradd -m skype

USER skype

CMD ["skype"]
