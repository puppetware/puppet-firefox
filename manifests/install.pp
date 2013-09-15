# == Class: firefox::install
#
# Installs Firefox for OS X.
#
# === Authors
#
# Ryan Skoblenick <ryan@skoblenick.com>
#
# === Copyright
#
# Copyright 2013 Ryan Skoblenick.
#
class firefox::install {
  $language = $firefox::language
  $version = $firefox::version

  case $::kernel {
    'Darwin': {
       $source = "https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/${version}/mac/${language}/Firefox%20${version}.dmg"
    }
    default: {
      fail("Unsupported Kernel: ${::kernel} operatingsystem: ${::operatingsystem}")
    }
  }
  package {"Firefox-${version}":
    ensure => installed,
    source => $source,
    provider => appdmg,
  }
}