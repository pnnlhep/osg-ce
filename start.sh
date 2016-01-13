#!/bin/bash -e

# Setup GRAM
/sbin/service globus-gatekeeper start

# Setup CONDOR client
. /etc/sysconfig/condor
condor_master -f 

