# Class: arch_dev::openvpn
#
# Install OpenVPN and its NetworkManager part
#
# Parameters:
#
# Actions:
#   - Install openvpn and networkmanager-openvpn
#
# Requires:
#
# Sample Usage:
#
class arch_dev::openvpn {

  package {'networkmanager-openvpn':
    ensure => present,
  }

  package {'openvpn':
    ensure => present,
  }

}
