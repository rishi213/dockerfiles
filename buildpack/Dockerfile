FROM nightling/base

RUN dnf -y install automake bison flex gcc-c++ patchutils rpm-build subversion \
	{bzip2,expat,glib2,openssl,python{3,},readline,ruby}-devel \
	lib{curl,event,ffi,xml2,xslt,yaml}-devel \
	&& dnf clean all
