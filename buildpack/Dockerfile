FROM nightling/base

RUN yum -y install automake bison cvs flex gcc-c++ patchutils rpm-build subversion \
	{bzip2,expat,glib2,openssl,python{3,},readline,ruby}-devel \
	lib{curl,event,ffi,xml2,xslt,yaml}-devel \
	&& yum clean all
