FROM fedora

RUN yum -y update \
	&& yum -y install redhat-lsb-core sudo git iputils net-tools nmap-ncat \
	auto{conf,make} gcc-c++ rpm-build python{3,}-{devel,pip} \
	&& yum clean all \
	&& cp /etc/skel/.bash* /root/ \
	&& passwd --lock root

CMD ["bash"]
