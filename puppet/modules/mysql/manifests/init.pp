class mysql {

  # Install mysql
  package { ['mysql-server-5.6']:
    ensure => present,
    require => Exec['apt-get update'],
  }

  # Run mysql
  service { 'mysql':
    ensure  => running,
    require => Package['mysql-server-5.6'],
  }

  #Use a custom mysql configuration file
  file { '/etc/mysql/my.cnf':
    source  => 'puppet:///modules/mysql/my.cnf',
    #Permissions are necessary for this file, if world writable mysql will throw error
    owner => 'root',
    group => 'root',    
    mode => 0644,
    require => Package['mysql-server-5.6'],
    notify  => Service['mysql'],
  }

  # We set the root password here
  exec { 'set-mysql-password':
    unless  => 'mysqladmin -uroot -proot status',
    command => "mysqladmin -uroot password root",
    path    => ['/bin', '/usr/bin'],
    require => Service['mysql'];
  }
}