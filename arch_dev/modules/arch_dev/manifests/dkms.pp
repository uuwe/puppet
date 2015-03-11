# Class: arch_dev::dkms
#
# Install, run and configure DKMS
#
# Parameters:
#
# Actions:
#   - Install dkms
#   - Enable and run the dkms service
#
# Requires:
#
# Sample Usage:
#
class arch_dev::dkms {

  package {'dkms':
    ensure => present,
  }

  service {'dkms':
    ensure => running,
    enable => true,
  }

}
