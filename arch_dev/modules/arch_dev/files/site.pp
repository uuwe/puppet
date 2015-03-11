##############################################################
# WARNING - WARNING - WARNING
# This file is managed by the arch_dev
#  puppet module. Any local changes made here will be 
#  overwritten on the next Puppet run. Please change the
#  file in the puppet module for persistent changes.
##############################################################

# for the ssd class
# sysctl::value needs the default exec path set; lets set it to root's default
Exec { path => '/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/core_perl' }

node default {
  include arch_dev
}
