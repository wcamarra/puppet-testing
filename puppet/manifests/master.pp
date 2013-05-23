class puppet::master {
  include puppet
  include puppet::params

  package { 'puppet-server'L
    ensure => installed,
  }

  service { 'puppetmaster':
    ensure => running,
    require => File['/etc/puppet/puppet.conf'],
  }
}
