# Class: arch_dev::mosh
#
# Install mosh (mobile shell) and set firewall rules for it
#
# See: http://mosh.mit.edu/
#
# Parameters:
#
# Actions:
#   - Install mosh
#   - Firewall rules to allow UDP ports 60000:61000
#
# Requires:
#
# Sample Usage:
#
class arch_dev::mosh {

  package {'mosh':
    ensure => present,
  }

  firewall { '101 allow mosh':
    port   => '60000-61000',
    proto  => udp,
    action => accept,
  }

}

