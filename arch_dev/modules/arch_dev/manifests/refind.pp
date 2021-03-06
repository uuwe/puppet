# Class: arch_dev::refind
#
# Make /etc/mkinitcpio.d/linux.preset changes for booting via rEFInd
#
# Parameters:
#
# Actions:
#   - Install modified version of /etc/mkinitcpio.d/linux.preset
#
# Requires:
#
# Sample Usage:
#
class arch_dev::refind {

  file {'/etc/mkinitcpio.conf':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/arch_dev/mkinitcpio.conf',
    notify  => Exec['mkinitcpio'],
  }

  file {'/etc/mkinitcpio.d/linux.preset':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    source  => 'puppet:///modules/arch_dev/mkinitcpio_rEFInd_linux.preset',
    notify  => Exec['mkinitcpio'],
  }

  file {'/boot/efi/EFI/refind/refind_linux.conf':
    ensure   => present,
    owner    => root,
    group    => root,
    mode     => '0755',
    content  => template('arch_dev/refind_linux.conf.erb'),
  }

  exec {'mkinitcpio':
    refreshonly => true,
    command     => '/usr/bin/mkinitcpio -p linux',
    cwd         => '/',
    user        => 'root',
    group       => 'root',
  }

}
