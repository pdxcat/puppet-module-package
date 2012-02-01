class package::virtual::solaris {
  Package {
    provider  => blastwave,
    require   => Class["solaris::pkgget"],
    adminfile => "${solaris::pkgget::adminfile}",
    ensure    => installed,
  }

  @package {
    "clisp":;
    "grap":;
    "coreutils":;
    "libpng3":;
    "pm_dbd_sqlite":;
  }

}
