lua-yaml
========

Lua [YAML] serialization using [LibYAML].

Usage
-----

    require 'yaml'

    serialized = yaml.dump{1, 2, 3, 4}
    content = yaml.load(serialized)

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
