define apache::vhost( $port, $docroot, $ssl=true, $template='apache/vhost.conf.erb', $serveraliases = '') {
  
  include apache

  file { "/etc/httpd/conf.d/${name}.conf":
    content => template($template),
    owner   => 'root',
    group   => 'root',
    mode    => '777',
    require => Class['apache::install'],
    notify  => Class['apache::service'],
  }

}
