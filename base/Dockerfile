FROM fedora

RUN yum -y update \
	&& yum -y install tar less nano passwd sudo iputils net-tools nmap-ncat \
	gcc-c++ {auto,}make redhat-rpm-config python{3,}-{devel,pip} \
	&& yum clean all \
	&& cp /etc/skel/.bash* /root/ \
	&& passwd --lock root

CMD ["bash"]
