FROM nightling/base

RUN yum -y install \
	automake \
	bison \
	clang \
	cvs \
	flex \
	gcc-c++ \
	git \
	nasm \
	patchutils \
	rpm-build \
	subversion \
	{bzip2,glib2,openssl,python{3,},readline,ruby}-devel \
	lib{curl,event,ffi,xml2,xslt,yaml}-devel \
	&& yum clean all
