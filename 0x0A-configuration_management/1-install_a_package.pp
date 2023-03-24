# Download flask 2.1.0
exec { 'apt-get update':
  command => '/usr/bin/apt-get update'
}

package { 'flask2.1.0':
  ensure  => 'installed',
  require => Exec['apt-get update']
}

package { 'puppet-lint':
  ensure   => '2.1.0'
  require  => Package['flask2.1.0'],
  provider => 'gem'
}
