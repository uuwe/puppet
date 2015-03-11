# Class: arch_dev::pdnsd
#
# Install and configute pdnsd for persistent local dns caching.
#
# Parameters:
#
# Actions:
#   - Install pdnsd
#
# Requires:
#
# Sample Usage:
#
class arch_dev::pdnsd {

  package {'pdnsd':
    ensure => present,
  }

  file {'/etc/pdnsd.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/arch_dev/pdnsd.conf',
    require => Package['pdnsd'],
  }

  # service pdnsd

}
