class package::virtual::ubuntu::natty inherits package::virtual::ubuntu {

  Package["g++-4.3"]         { ensure => absent }
  Package["gcc-4.3"]         { ensure => absent }
  Package["python-virtinst"] { ensure => absent }
  Package["octave"]          { name   => "octave3.2" }

}
