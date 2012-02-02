class package::virtual::ubuntu {
  include "package::virtual::ubuntu::$lsbdistcodename"

  case $architecture {
    "x86_64": {
      $x86_64_only = "present"
      $i386_only   = "absent"
    }
    "i386":   {
      $x86_64_only = "absent"
      $i386_only   = "present"
    }
    default:  {
      $x86_64_only = "absent"
      $i386_only   = "absent"
    }
  }

  Package {
    ensure => installed,
  }

  @package {
    "ack-grep":;
    "acl":;
    "acovea":;
    "acpi":;
    "alpine":;
    "anjuta":;
    "apache2-doc":;
    "apache2-mpm-prefork":;
    "apache2-prefork-dev":;
    "apache2-suexec-custom":;
    "apachetop":;
    "apgdiff":;
    "apt-rdepends":;
    "arduino":;
    "arj":                      ensure => latest;
    "aspell":;
    "autoconf":;
    "automake":;
    "autopsy":;
    "autotools-dev":;
    "awstats":;
    "binutils":;
    "binutils-dev":;
    "binutils-doc":;
    "binutils-static":;
    "bison":;
    "boost-build":;
    "bridge-utils":;
    "brltty":                   ensure => absent;
    "brother-cups-wrapper-laser":;
    "build-essential":;
    "bwm-ng":;
    "cabal-install":;
    "cat-lpr":                  ensure => latest;
    "catmenus":                 ensure => latest;
    "cervisia":;
    "cgoban":;
    "chromium-browser":         ensure => latest;
    "clamav":                   ensure => latest;
    "clamav-daemon":            ensure => latest;
    "clamav-milter":            ensure => latest;
    "clisp":;
    "cmake":;
    "coq":;
    "coqide":;
    "cracklib-runtime":;
    "cscope":;
    "cups":;
    "cups-bsd":;
    "curl":;
    "cvs":;
    "cvs2svn":;
    "dcfldd":;
    "ddd":;
    "ddd-doc":;
    "deskbar-applet":;
    "dh-make-perl":;
    "dia":;
    "dia-common":;
    "dia-gnome":;
    "dia-libs":;
    "dia2code":;
    "dict":;
    "djview":;
    "e2fsprogs":;
    "eagle":;
    "eclipse":;
    "eclipse-cdt":;
    "eclipse-jdt":;
    "elinks":;
    "emacs":;
    "emacs-goodies-el":;
    "encfs":;   #166760
    "enscript":;
    "erlang":;
    "erlang-base-hipe":;
    "erlang-manpages":;
    "expect":;
    "fbdesk":;
    "fbpager":;
    "ffmpeg":;
    "fftw2":;
    "finger":;
    "firefox":                  ensure => latest;
    "flashplugin-installer":;
    "flex":;
    "fluxbox":;
    "foremost":;
    "freeglut3":;
    "freeglut3-dev":;
    "freeradius":;
    "freeradius-postgresql":;
    "fuzzyocr":;
    "fxload":;
    "g++-4.3":;
    "g++-4.4":;
    "gawk":;
    "gcc-4.3":;
    "gcc-4.4":;
    "gdal-bin":;
    "geany":;
    "geany-plugin-prj":;
    "geany-plugin-vc":;
    "gfortran":;
    "ghc6":;
    "ghc6-doc":;
    "gimp":;
    "gimp-help-common":;
    "gimp-help-en":;
    "git-arch":;
    "git-core":;
    "git-cvs":;
    "git-email":;
    "git-svn":;
    "gitk":;
    "glpk":;
    "glut-doc":;
    "gmrun":;
    "gnugo":;
    "gnuplot":;
    "gnustep":;
    "gobjc":;
    "gocr":;
    "gperf":;
    "gprolog":;
    "gprolog-doc":;
    "graphviz":;
    "gs":;
    "gsfonts-x11":;
    "gsl-bin":;
    "gstreamer0.10-ffmpeg":;
    "gstreamer0.10-plugins-bad-dbg":;
    "gstreamer0.10-plugins-good-dbg":;
    "gstreamer0.10-plugins-ugly-dbg":;
    "gtkhash":;
    "guile-1.6":;
    "guile-1.6-dev":;
    "guile-1.6-doc":;
    "guvcview":;
    "gv":;
    "gwave":;
    "h5utils":;
    "haskell-doc":;
    "haskell-mode":;
    "hdf5-tools":;
    "html2ps":;
    "htop":;
    "hugs":;
    "hwinfo":;
    "icedtea6-plugin":;
    "idle":;
    "idle-python3.2":;
    "imagemagick":;
    "indent":;
    "inkscape":;
    "irb":;
    "irssi":;
    "ispell":;
    "iverilog":            ensure => latest;
    "javacc":;
    "javacc-doc":;
    "jetty":;
    "jflex":;
    "jlex":;
    "k3b":;
    "kcachegrind":;
    "kchmviewer":;
    "kdebase-apps":;
    "kdebase-runtime":;
    "kdebase-workspace":;
    "kdelibs4-dev":;
    "kdevelop":;
    "kdevelop-data":;
    "keychain":;
    "kile":;
    "kmix":;
    "kmplayer":;
    "kompare":;
    "kopete":;
    "kpackagekit":              ensure => absent;
    "kpartx":;
    "kuiviewer":;
    "kvm":;
    "kvm-pxe":;
    "lam-runtime":;
    "lam4-dev":;
    "lame":;
    "latex-beamer":;
    "ldap-utils":;
    "ldapvi":;
    "ledit":;
    "lftp":;
    "lha":                      ensure => latest;
    "lib32ncurses5-dev":;
    "lib32readline5-dev":;
    "lib32z-dev":               name => "lib32z1-dev";
    "libactiveldap-ruby1.8":;
    "libaio-dev":;
    "libaio1":;
    "libalgorithm-diff-perl":;
    "libapache2-mod-authnz-external":;
    "libapache2-mod-passenger":;
    "libapache2-mod-php5":;
    "libapache2-mod-suphp":;
    "libapache2-mod-wsgi":;
    "libapache2-svn":;
    "libappconfig-perl":;
    "libarpack2":;
    "libarpack2-dev":;
    "libatomic-ops-dev":;
    "libboost-dev":;
    "libboost-python-dev":;
    "libc6-dev-i386":           ensure => $x86_64_only;
    "libcgi-session-perl":;
    "libcr-dev":;
    "libcrack2-dev":;
    "libcrypt-ssleay-perl":;
    "libcurl4-gnutls-dev":;
    "libcurl4-openssl-dev":;
    "libcv-dev":;
    "libcvaux-dev":;
    "libdate-calc-perl":;
    "libdate-manip-perl":;
    "libdate-simple-perl":;
    "libdbd-mysql-perl":;
    "libdbd-pg-perl":;
    "libdbd-sqlite3-perl":;
    "libdbi-perl":;
    "libedit-dev":;
    "liberror-perl":;
    "libfcgi-dev":;
    "libfcgi-ruby1.8":;
    "libffcall1-dev":;
    "libfftw3-dev":;
    "libftdi-dev":;
    "libgc-dev":;
    "libgd-graph3d-perl":;
    "libgd2-xpm":;
    "libgd2-xpm-dev":;
    "libgdal1-dev":;
    "libgl1-mesa-dev":;
    "libgmp3-dev":;
    "libgmp3c2":;
    "libgsl0-dev":;
    "libgsl0ldbl":;
    "libgstreamer-plugins-base0.10-dev":;
    "libgstreamer0.10-0-dbg":;
    "libgstreamer0.10-dev":;
    "libhighgui-dev":;
    "libhtml-parser-perl":;
    "libhtml-tagset-perl":;
    "libhtml-template-perl":;
    "libhtml-tree-perl":;
    "libhugs-hunit-bundled":;
    "libhugs-parsec-bundled":;
    "libhugs-quickcheck-bundled":;
    "libimage-info-perl":;
    "libio-socket-ssl-perl":;
    "libipc-run-perl":;
    "liblablgtk2-ocaml-dev":;
    "libldap-ruby1.8":;
    "libmeep-dev":;
    "libmeep6":;
    "libmemcache-dev":;
    "libmodule-install-perl":;
    "libmono-npgsql1.0-cil":;
    "libmono-npgsql2.0-cil":;
    "libmysql-ruby":;
    "libmysqlcppconn-dev":;
    "libmysqlcppconn4":;
    "libncursesw5-dev":;
    "libnet-ident-perl":;
    "libnet-ldap-perl":;
    "libnet-snmp-perl":;
    "libnet-ssh-perl":;
    "libnetcdf-dev":;
    "libode-dev":;
    "libpam-krb5":;
    "libpam-modules":           ensure => latest;
    "libpam-smbpass":;
    "libpam0g":;
    "libpam0g-dev":;
    "libpcap-dev":;
    "libpg-perl":;
    "libpgsql-ruby":;
    "libpng12-dev":;
    "libpq-dev":;
    "libqt3-compat-headers":;
    "libqt3-headers":;
    "libqt3-mt-dev":;
    "libqt4-assistant":;
    "libqt4-dev":;
    "libqt4-sql-psql":;
    "librcs-perl":;
    "libruby":;
    "libsbml":;
    "libsdl1.2-dev":;
    "libsdl1.2debian-all":;
    "libshadow-ruby1.8":;
    "libsqlite3-dev":;
    "libsqlite3-ruby":;
    "libssh2-1-dev":;
    "libsvm-dev":;
    "libsvm-tools":;
    "libsvm2":;
    "libtcltk-ruby":;
    "libtemplate-perl":;
    "libtimedate-perl":;
    "libtool":;
    "libtool-doc":;
    "libunicode-string-perl":;
    "liburi-perl":;
    "libusb-dev":;
    "libvirt-bin":;
    "libwxgtk2.6-dev":;
    "libxml2-dev":;
    "linux-headers-generic":    ensure => latest;
    "linux-headers-server":     ensure => latest;
    "linux-image-generic":      ensure => latest;
    "linux-image-server":       ensure => latest;
    "lsscsi":;
    "lush":;
    "lush-library":;
    "lynx":;
    "lyx":;
    "mailutils":;
    "manpages-dev":;
    "manpages-posix-dev":;
    "maven2":;
    "mdbtools":;
    "mdbtools-dev":;
    "meep":;
    "memcached":;
    "mencoder":;
    "mercurial":;
    "mhonarc":;
    "mingw32":;
    "minisat2":;
    "mono-mcs":;
    "mono-xsp":;
    "mono-xsp2":;
    "monodevelop":;
    "mozplugger":               ensure => absent;
    "mpack":;
    "mpich2":;
    "mplayer":;
    "mutt":;
    "mysql-server":;
    "mytop":;
    "nano":;
    "ncurses-term":;
    "netbeans":;
    "netpbm":;
    "ngspice":;
    "nitrogen":;
    "nmh":;
    "nvidia-current":;
    "ocaml":;
    "ocaml-mode":;
    "ocrad":;
    "octave":;
    "okular":;
    "okular-extra-backends":;
    "openjdk-6-jdk":;
    "openjdk-7-jdk":;
    "openoffice.org-calc":;
    "openoffice.org-impress":;
    "openssh-blacklist":        ensure => latest;
    "openssl":;
    "openssl-blacklist":        ensure => latest;
    "openssl-blacklist-extra":  ensure => latest;
    "packagekit":               ensure => absent;
    "packagekit-backend-apt":   ensure => absent;
    "packagekit-gnome":         ensure => absent;
    "pdftk":;
    "pep8":;
    "perl-doc":;
    "pgadmin3":;
    "php-date":;
    "php-db":;
    "php-file":;
    "php-html-common":;
    "php-http-request":;
    "php-log":;
    "php-mail":;
    "php-mail-mime":;
    "php-net-imap":;
    "php-net-smtp":;
    "php-net-socket":;
    "php-net-url":;
    "php-pear":;
    "php-xml-parser":;
    "php5":;
    "php5-cgi":;
    "php5-cli":;
    "php5-curl":;
    "php5-dev":;
    "php5-gd":;
    "php5-imap":;
    "php5-ldap":;
    "php5-mcrypt":;
    "php5-mysql":;
    "php5-pgsql":;
    "php5-radius":;
    "php5-snmp":;
    "php5-sqlite":;
    "php5-suhosin":;
    "php5-tidy":;
    "php5-xmlrpc":;
    "php5-xsl":;
    "phpmyadmin":;
    "phppgadmin":;
    "picosat":;
    "plasma-desktop":;
    "pngtools":;
    "postgresql":;
    "postgresql-autodoc":;
    "postgresql-client":;
    "postgresql-contrib":;
    "postgresql-contrib-8.3":;
    "postgresql-contrib-8.4":;
    "postgresql-plperl-8.3":;
    "postgresql-plperl-8.4":;
    "procmail":;
    "prolog-el":;
    "pwauth":;
    "pyflakes":;
    "pylint":;
    "python":;
    "python-4suite-xml":;
    "python-crypto":;
    "python-dev":;
    "python-django":;
    "python-dnspython":;
    "python-doc":;
    "python-egenix-mxtools":;
    "python-enthought-traits":;
    "python-gtk2":;
    "python-ldap":;
    "python-lxml":;
    "python-markdown":;
    "python-matplotlib":;
    "python-matplotlib-data":;
    "python-matplotlib-doc":;
    "python-mysqldb":;
    "python-networkx":;
    "python-numpy":;
    "python-pgsql":;
    "python-pqueue":;
    "python-psycopg2":;
    "python-pyao":;
    "python-pygame":;
    "python-pygresql":;
    "python-scipy":;
    "python-setuptools":;
    "python-stats":;
    "python-tk":;
    "python-twisted":;
    "python-twisted-lore":;
    "python-tz":;
    "python-urwid":;
    "python-virtinst":;
    "python-virtualenv":;
    "python-vm-builder":;
    "python2.4":;
    "python2.5":;
    "python3":;
    "pyzor":;
    "qt4-designer":;
    "qt4-dev-tools":;
    "qt4-qtconfig":;
    "qtcreator":;
    "quota":;
    "r-base":;
    "r-base-core":;
    "r-base-dev":;
    "r-recommended":;
    "rapidsvn":;
    "razor":;
    "rcs":;
    "remmina":;
    "reprepro":;
    "rsync":;
    "ruby":;
    "ruby-dev":;
    "ruby1.8-dev":;
    "ruby1.9.1":;
    "rubygems":;
    "rubygems1.9.1":;
    "rxvt":;
    "sbcl":;
    "scalpel":;
    "scidavis":;
    "scim":                     ensure => absent;
    "screen":;
    "scribus":;
    "sharutils":;
    "sharutils-doc":;
    "skype":;
    "sleuthkit":;
    "smbfs":;
    "socat":;
    "spamass-milter":;
    "spamassassin":;
    "spambayes":;
    "spamc":;
    "speedy-cgi-perl":;
    "splint":;
    "sqlite3":;
    "squeak-image3.9":;
    "squeak-sources3.9":;
    "squeak-vm":;
    "sshfs":;
    "streamtuner":;
    "stunnel":;
    "subversion":;
    "subversion-tools":;
    "suckless-tools":;
    "swi-prolog":;
    "synergy":;
    "sysstat":;
    "sysv-rc-conf":;
    "tcl":;
    "tcl-dev":;
    "tcpdump":;
    "tcsh":;
    "telnet":;
    "texlive-base":;
    "texlive-fonts-extra":;
    "texlive-full":;
    "texlive-generic-recommended":;
    "texlive-latex-base":;
    "texlive-latex-extra":;
    "texlive-latex-recommended":;
    "texmacs":;
    "texmaker":;
    "tightvncserver":;
    "tmux":;
    "tofrodos":;
    "tomcat6":;
    "trac":;
    "trac-accountmanager":;
    "trac-git":;
    "trac-spamfilter":;
    "traceroute":;
    "ttf-thai-tlwg":;
    "ubuntu-dev-tools":;
    "udev":;
    "umbrello":;
    "uml-utilities":;
    "unrar":;
    "uw-mailutils":;
    "valgrind":;
    "vim":;
    "vim-gnome":;
    "virt-viewer":;
    "vlan":;
    "vlc":;
    "vlock":;
    "vm":;
    "vnc4server":;
    "w3m":;
    "wamerican":;
    "weechat":;
    "whois":;
    "wine":;
    "x86info":;
    "xauth":;
    "xchat":;
    "xcompmgr":;
    "xine-ui":;
    "xlockmore":;
    "xmobar":;
    "xmonad":;
    "xnest":;
    "xorg-dev":;
    "xvnc4viewer":;
  }

}
