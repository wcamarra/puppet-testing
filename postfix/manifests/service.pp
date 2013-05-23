class postfix::service {
  service { 'postfix':
    ensure => running,
    require => Class['postfix::config']
  }
}
