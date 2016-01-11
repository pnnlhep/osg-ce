FROM pnnlhep/osg-base
MAINTAINER Malachi Schram "malachi.schram@pnnl.gov"

RUN yum -y install osg-ca-certs osg-ce-condor globus-gram-job-manager-managedfork
RUN gums-host-cron

ADD ./start.sh /etc/start.sh
RUN chmod +x /etc/start.sh

CMD ["/etc/start.sh"]
