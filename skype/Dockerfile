FROM fedora
MAINTAINER Nightling

RUN yum localinstall -y http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm \
	&& yum install -y dejavu-sans-fonts dejavu-serif-fonts \
	&& yum clean all 

ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
