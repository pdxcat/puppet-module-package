class package::virtual::ubuntu::precise inherits package::virtual::ubuntu {

  Package {
    ensure => present,
  }

  @package {
    "gnome-session-fallback":;
    "kde-runtime":;
    "kde-workspace":;
    "kde-workspace-data":;
    "kde-baseapps":;
  }

  Package["libmysqlcppconn4"]    { ensure => absent }

}
