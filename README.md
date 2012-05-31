lua-yaml
========

Lua [YAML] serialization using [LibYAML].

Description
-----------

This module is a Lua binding for Kirill Siminov's excellent [LibYAML].
LibYAML is generally considered to be the best C YAML 1.1 implementation.

This module defines the functions dump, load, and configure within the
global `yaml` table.

Portions of this software were inspired by Ingy döt Net's [YAML::LibYAML]
Perl module.

[YAML]: http://yaml.org/
[LibYAML]: http://pyyaml.org/wiki/LibYAML
[YAML::LibYAML]: http://search.cpan.org/~nuffin/YAML-LibYAML

Usage
-----

    require 'yaml'

    serialized = yaml.dump{1, 2, 3, 4}
    content = yaml.load(serialized)

History
-------

* 0.2: November 23 2009
  + Updated libyaml to version 0.1.3
  + Now properly dumps and loads strings containing binary data using base64
  + Dumped strings are quoted when they could be loaded as numbers
  + Nulls are loaded as `yaml.null`, a function that returns itself and can
    be used to test for equality
  + Load now also recognizes `yes` as a boolean truth value
  + Zero length scalars are not converted to `nil`

* 0.1: May 12 2009
  + Initial release

Copyright
---------

* Copyright (c) 2012, Craig Barnes
* Copyright (c) 2009, Andrew Danforth

Licensed under the MIT license.

Thanks
------

Thanks to the following people for suggestions and patches:

* Peter Mawhorter
* Cyril Romain
* Adrian Sampson
