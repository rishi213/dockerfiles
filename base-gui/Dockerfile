FROM nightling/base

RUN yum -y install redhat-lsb{-desktop,}.{x86_64,i686} pulseaudio-libs.{x86_64,i686} \
	dejavu-{sans,serif,sans-mono}-fonts google-cros*-fonts \
	&& yum clean all
