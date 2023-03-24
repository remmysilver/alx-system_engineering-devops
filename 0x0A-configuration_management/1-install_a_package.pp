# install flask -v

exec { 'flask':
  command => '/usr/bin/apt-get -y install flask -v 2.1.0',
}
