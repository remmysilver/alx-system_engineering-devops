# install flask -v

exec { 'puppet-lint':
  command => '/usr/bin/apt-get -y install 2.1.0  -v 2.1.0',
}
