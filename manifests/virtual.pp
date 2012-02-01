class package::virtual {
  case $operatingsystem {
    "solaris": { include package::virtual::solaris }
    "ubuntu":  { include package::virtual::ubuntu  }
    default:   { err ("No virtual packages defined for $operatingsystem") }
  }
}
