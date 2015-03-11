# Class: arch_dev::mbp_retina_kde
#
# Setup KDM/KDE specific to the MacBook Pro Retina - setup kdmrc
#
# Parameters:
#
# Actions:
#   - Setup kdmrc
#
# Requires:
#
# Sample Usage:
#
class arch_dev::mbp_retina_kde {

  file {'kdmrc':
    ensure  => present,
    path    => '/usr/share/config/kdm/kdmrc',
    mode    => '0644',
    owner   => 'root',
    group   => 'root',
    source  => 'puppet:///modules/arch_dev/kdmrc',
    require => Package['kdebase-workspace'],
  }

}
