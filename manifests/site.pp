class { 'postgresql::server':
  ip_mask_allow_all_users    => '0.0.0.0/0',
  listen_addresses           => '*',
  manage_firewall            => true,
  postgres_password          => 'TPSrep0rt!',
} ->
postgresql::server::db { 'des_db':
  user     => 'desuser',
  password => 'desuser'
}