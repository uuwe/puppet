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

# for the iptables and firewall stuff
resources { "firewall":
  purge => true,
}

# this ensures that the _pre and _post classes are run in that order, to make sure we don't get locked out of the box
Firewall {
  before  => Class['arch_dev::firewall_post'],
  require => Class['arch_dev::firewall_pre'],
}

# this sets up default allow rules so we don't gronk the box
class {'arch_dev::firewall_pre':
  require => File['/etc/conf.d/iptables'],
}

# this sets up a default drop rule and makes sure it's last
class {'arch_dev::firewall_post' : }

# this installs the require packages (iptables)
class {'firewall': }

node default {
  include arch_dev
}
