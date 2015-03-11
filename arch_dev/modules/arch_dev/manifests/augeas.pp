# Class: arch_dev::augeas
#
# Install augeas, required for some of the puppet classes
#
# Parameters:
#
# Actions:
#   - Install augeas
#
# Requires:
#
# Sample Usage:
#
class arch_dev::augeas {

  package {'augeas':
    ensure => present,
  }

  package {'ruby-augeas':
    ensure => present,
  }

}
