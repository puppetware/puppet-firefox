# == Class: firefox
#
# Installs Firefox for OS X.
#
# === Parameters:
#
# [*language*] Language of Firefox
# [*version*] Version of Firefox
#
# === Examples
#
#  class { firefox:
#	 language => 'en-US',
#    version => '23.0',
#  }
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class firefox (
  $language = $firefox::params::language,
  $version = $firefox::params::version
) inherits firefox::params {
  anchor {'firefox::begin': } ->
  class {'firefox::install': } ->
  anchor {'firefox::end': }
}