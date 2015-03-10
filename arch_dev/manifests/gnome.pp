# Class: puppet-archlinux-macbookretina::xorg
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
class puppet-archlinux-macbookretina::gnome {

  $packages = ['gnome']

  package {$packages:
    ensure => present,
  }

}
