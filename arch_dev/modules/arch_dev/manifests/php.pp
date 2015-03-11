# Class: arch_dev::php
#
# Install PHP for CLI
#
# Parameters:
#
# Actions:
#   - Install php packages
#
# Requires:
#
# Sample Usage:
#
class arch_dev::php {

  $php_packages = ['php', ]

  package {$php_packages:
    ensure => present,
  }

}
