# Class: arch_dev::firewall_post
#
# Define firewall rules that will always be at the end of the chain
#
# Parameters:
#
# Actions:
#   - Set firewall rule to drop all
#
# Requires:
#
# Sample Usage:
#
class arch_dev::firewall_post {

  firewall { '999 drop all':
    proto   => 'all',
    action  => 'drop',
    before  => undef,
  }

}
