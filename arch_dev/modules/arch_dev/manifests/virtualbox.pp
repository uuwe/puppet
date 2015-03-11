# Class: arch_dev::virtualbox
#
# Install and configure VirtualBox and Vagrant
#
# Parameters:
#
# Actions:
#   - Install virtualbox package
#   - Install virtualbox-host-modules
#   - Install virtualbox-guest-iso
#   - Install virtualbox-ext-oracle
#   - Setup virtualbox modules-load.d file for required kernel modules
#   - Install vagrant
#
# Requires:
#
# Sample Usage:
#
class arch_dev::virtualbox {

  package {'virtualbox':
    ensure => present,
  }

  package {'virtualbox-host-modules':
    ensure => present,
  }

  package {'virtualbox-guest-iso': ensure => present, }

  package {'vagrant':
    ensure => present,
  }

  file {'/etc/modules-load.d/virtualbox.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/arch_dev/virtualbox-modules.conf',
  }

  package {'virtualbox-ext-oracle':
    ensure => present,
  }

}
