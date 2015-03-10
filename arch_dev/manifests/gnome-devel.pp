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
class puppet-archlinux-macbookretina::gnome-devel {

  $packages = ['gtk3-git']

  package {$packages:
    ensure => present,
  }

}
