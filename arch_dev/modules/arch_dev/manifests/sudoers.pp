# Class: arch_dev::sudoers
#
# Install sudoers file - Arch default plus allow wheel access to all (with password).
#
# Parameters:
#
# Actions:
#   - Install sudoers file
#
# Requires:
#
# Sample Usage:
#
class arch_dev::sudoers {

  file { '/etc/sudoers':
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0440',
    source => 'puppet:///modules/arch_dev/sudoers',
  }

}
