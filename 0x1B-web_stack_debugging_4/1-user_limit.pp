# Change the limit on number of open files for user Holberton to sys max
exec {'hard limit':
  command => 'sed -r -i "s/(holberton hard nofile) [0-9]+/\1 10240/" /etc/security/limits.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -f /etc/security/limits.conf',
}

exec {'soft limit':
  command => 'sed -r -i "s/(holberton soft nofile) [0-9]+/\1 8000/" /etc/security/limits.conf',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  onlyif  => 'test -f /etc/security/limits.conf',
  require => Exec['hard limit'],
}
