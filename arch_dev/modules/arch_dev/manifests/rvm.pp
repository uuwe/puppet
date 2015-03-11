# Class: arch_dev::rvm
#
# Install prerequisites for ruby rvm

#
# Parameters:
#
# Actions:
#   - update /etc/gemrc
#
# Requires:
#
# Sample Usage:
#
class arch_dev::rvm {

  file { '/etc/gemrc':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/arch_dev/gemrc',
  }

}
