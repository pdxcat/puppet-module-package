class package::virtual::ubuntu::lucid inherits package::virtual::ubuntu {

  Package {
    ensure => present,
  }

  @package {
    "avr-libc":;
    "avrdude":;
    "g++-4.4-multilib":;
    "gcc-avr":;
    "geany-plugin-addons":;
    "geany-plugin-doc":;
    "geany-plugin-gdb":;
    "geany-plugin-latex":;
    "geany-plugin-lipsum":;
    "geany-plugin-lua":;
    "geany-plugin-shiftcolumn":;
    "geany-plugin-spellcheck":;
    "geany-plugins":;
    "hdfview":;
    "kdebase":;
    "libcv4":;
    "libcvaux4":;
    "libdbm-deep-perl":;
    "libhighgui4":;
    "libmysql-cil-dev":;
    "libmysqlclient-dev":;
    "rt3.8-clients":;
    "splint-doc-html":;
  }

  Package["eclipse-cdt"]         { ensure => absent }
  Package["suckless-tools"]      { ensure => absent }
  Package["octave"]              { name => "octave3.0" }


}
