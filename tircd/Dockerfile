FROM fedora
MAINTAINER Nightling

RUN yum install -y git perl-CPAN \
	&& yum clean all

RUN yum install -y perl-JSON-Any perl-LWP-Protocol-https perl-Net-OAuth \
	perl-Net-Twitter-Lite perl-POE perl-POE-Filter-IRCD \
	perl-Storable perl-Time-Local perl-URI-Find \
	&& yum clean all

ADD source /opt/tircd
ADD tircd.cfg /opt/tircd/

EXPOSE 6667

USER nobody

WORKDIR /opt/tircd

CMD ["perl", "tircd.pl"]
