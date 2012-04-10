# Deprecation Notice

This module has been depricated for puppet-module-singleton.
https://github.com/pdxcat/puppet-module-singleton

# Packages module for Puppet

## Description
Provides virtual package resources to be realized elsewhere.

## Usage

### package::virtual
Include the class and realize packages.
<pre>
include package::virtual
realize(
  Package["encfs"],
  Package["remmina"],
)
</pre>

### package::virtual::ubuntu
Defaults can be overridden like this:
<pre>
  @package {
    "linux-kernel-headers":  ensure => latest;
}
</pre>

### package::virtual::solaris
Defaults can be overridden like this:
<pre>
  @package {
    "perl5":  provider => opencsw;
}
</pre>

### When ubuntu changes package names
When ubuntu changes package names between distros use the files in
virtual/ubuntu/

