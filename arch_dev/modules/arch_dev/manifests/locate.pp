# Class: arch_dev::locate
#
# Install the mlocate package and run updatedb
#
# Parameters:
#
# Actions:
#   - Install mlocate
#   - Exec updatedb
#
# Requires:
#
# Sample Usage:
#
class arch_dev::locate {

  package {'mlocate':
    ensure => present,
    notify => Exec['updatedb'],
  }

  exec {'updatedb':
    refreshonly => true,
    command     => '/usr/bin/updatedb',
    subscribe   => Package['mlocate'],
  }

}
