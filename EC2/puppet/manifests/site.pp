 node default {
  include packages
  include apache
  include ssh
  include localusers
  include ntp
  
}
class { 'postgresql::globals':
  manage_package_repo => true,
  version             => '9.3',
}->
class { 'postgresql::server':
  ip_mask_deny_postgres_user => '0.0.0.0/32',
  ip_mask_allow_all_users    => '0.0.0.0/0',
  listen_addresses           => '*',
  ipv4acls                   => ['hostssl all johndoe 192.168.0.0/24 cert'],
  postgres_password          => 'TPSrep0rt!',
}

postgresql::server::db { 'zeeman':
  user     => 'hamza',
  password => postgresql_password('hamza', 'sauda'),
}
