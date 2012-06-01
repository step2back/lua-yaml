lua-yaml
========

Lua [YAML] serialization using [LibYAML].

[YAML]: http://yaml.org/
[LibYAML]: http://pyyaml.org/wiki/LibYAML

Installation
------------

    make && sudo make install PREFIX=/usr/local

Usage
-----

The module defines the functions `dump`, `load`, and `configure` within the
global `yaml` table.

    require 'yaml'

    serialized = yaml.dump{1, 2, 3, 4}
    content = yaml.load(serialized)

History
-------

#### v0.3 - June 01 2012

* Remove bundled copy of LibYAML
* Fix Makefile to link against system copy of LibYAML and support `DESTDIR`
* Clean up README and reformat as Markdown

#### v0.2 - November 23 2009

* Updated LibYAML to version 0.1.3
* Now properly dumps and loads strings containing binary data using base64
* Dumped strings are quoted when they could be loaded as numbers
* Nulls are loaded as `yaml.null`, a function that returns itself and can
  be used to test for equality
* Load now also recognizes `yes` as a boolean truth value
* Zero length scalars are not converted to `nil`

#### v0.1 - May 12 2009

* Initial release

License
-------

Copyright (c) 2012, Craig Barnes.
Copyright (c) 2009, Andrew Danforth.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

Thanks
------

Thanks to the following people for suggestions and patches:

* Peter Mawhorter
* Cyril Romain
* Adrian Sampson

Portions of this software were inspired by Ingy döt Net's
[YAML::LibYAML](http://search.cpan.org/~nuffin/YAML-LibYAML) Perl module.
