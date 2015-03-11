# Class: arch_dev::xorg
#
# Install packages required for xorg X server
#
# Parameters:
#
# Actions:
#   - Install X server required packages
#
# Requires:
#
# Sample Usage:
#
class arch_dev::gnome {

  $packages = ['gnome']

  package {$packages:
    ensure => present,
  }

}
