class apache::service {
  service { 'httpd':
    ensure => running,
    require => Class['apache::install'],
  }
}
