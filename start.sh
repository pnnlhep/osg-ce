#!/bin/bash -e

gums-host-cron
/sbin/service gums-client-cron start
/sbin/service globus-gatekeeper start
/sbin/service globus-gridftp-server start

. /etc/sysconfig/condor
condor_master -f 

