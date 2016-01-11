FROM pnnlhep/osg-base
MAINTAINER Malachi Schram "malachi.schram@pnnl.gov"

RUN rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
RUN yum install yum-plugin-priorities
RUN rpm -Uvh https://repo.grid.iu.edu/osg/3.2/osg-3.2-el6-release-latest.rpm
RUN yum install osg-ca-certs
RUN yum install osg-ce-condor
RUN yum install globus-gram-job-manager-managedfork
RUN gums-host-cron

ADD ./start.sh /etc/start.sh
RUN chmod +x /etc/start.sh

CMD ["/etc/start.sh"]
