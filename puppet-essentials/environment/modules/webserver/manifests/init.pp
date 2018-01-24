class webserver {
  if $::osfamily == "Redhat" {
    package {'httpd':
      ensure => present
    }
  } elsif $::osfamily == "Debian" {
    package {'apache2':
      ensure => present
    }
  } else {
    print "This is not a supported distro"
  }
}
