class package::virtual::ubuntu::jaunty inherits package::virtual::ubuntu {

  Package {
    ensure => present,
  }

  @package {
    "gobjc++-4.2":;
    "haskell-platform":;
    "kdebase":;
    "libcv1":;
    "libcvaux1":;
    "libhighgui1":;
    "libltdl7-dev":;
    "plt-scheme":;
    "plt-scheme-doc":;
    "python-xml":;
    "rt3.6-clients":;
    "splint-doc-html":;
    "squeak":;
    "sun-java6-demo":;
    "sun-java6-doc":;
    "sun-java6-fonts":;
    "sun-java6-source":;
  }

  Package["chromium-browser"]    { ensure => absent }
  Package["eclipse-cdt"]         { ensure => absent }
  Package["kdebase-apps"]        { ensure => absent }
  Package["kdebase-runtime"]     { ensure => absent }
  Package["kdebase-workspace"]   { ensure => absent }
  Package["libmysqlcppconn-dev"] { ensure => absent }
  Package["libmysqlcppconn4"]    { ensure => absent }
  Package["plasma-desktop"]      { ensure => absent }
  Package["pwauth"]              { ensure => absent }
  Package["tmux"]                { ensure => absent }

}
