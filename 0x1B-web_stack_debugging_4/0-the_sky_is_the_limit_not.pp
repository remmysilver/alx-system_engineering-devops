# Set ulimit on nginx max file descriptors to system soft limit
exec {'ulimit':
  command => 'sed -r -i "s/(ULIMIT=\"-n) [0-9]+/\1 8000/" /etc/default/nginx',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -e /etc/default/nginx',
}

exec {'restart nginx':
  command => 'service nginx restart',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  require => Exec['ulimit'],
}
