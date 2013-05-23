class puppet::service {
  service { 'puppet':
    ensure => running,
    require => Class['puppet::install'],
  }
}
