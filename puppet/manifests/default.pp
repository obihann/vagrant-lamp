# Configure apt to update for installation of every package
Class['apt::update'] -> Package <| provider == 'apt' |>

package { [
  "redis",
  "memcached",
  "sqlite"
  ]:
  ensure => "installed"
}

# Include our modules
include apt
include base
include php
include apache::php
include mysql
include composer
