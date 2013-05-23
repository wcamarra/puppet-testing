class etchosts::install {
file { '/etc/hosts':
  ensure => present,
  source => 'puppet:///modules/etchosts/hosts',
  owner  => 'root',
  group  => 'root',
  mode   => '0644',
  }
}
