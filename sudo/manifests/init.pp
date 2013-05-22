class sudo {
  package { 'sudo':
    ensure  => present,
  }

  file { '/etc/sudoers':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    source  => 'puppet:///modules/sudo/etc/sudoers',
    require => Package['sudo'],
  }
}
