# Class: arch_dev::mac_keyboard
#
# Sets up macbook-specific keyboard stuff
#
# Parameters:
#
# Actions:
#   - set modprobe.d/apple.conf with "options hid_apple fnmode=2"
#
# Requires:
#
# Sample Usage:
#
class arch_dev::mac_keyboard {

  file { "/etc/modprobe.d/apple.conf":
    ensure => present,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/arch_dev/apple.conf',
  }

}
