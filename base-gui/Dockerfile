FROM nightling/base

RUN yum -y install redhat-lsb.{x86_64,i686} pulseaudio-libs.{x86_64,i686} \
	dejavu-{sans*,serif}-fonts google-cros*-fonts \
	&& yum clean all
