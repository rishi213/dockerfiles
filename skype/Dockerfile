FROM fedora
MAINTAINER Nightling

RUN yum localinstall -y http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm \
	&& yum install -y dejavu-sans-fonts dejavu-serif-fonts \
	&& yum clean all 

ENV PULSE_SERVER /run/user/pulse/native

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
