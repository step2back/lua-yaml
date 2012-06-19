package = "LUA-YAML"

version = "0.3-1"

description = {
  summary = "Lua YAML serialization using LibYAML",
  detailed = [[
    This module is a Lua binding for Kirill Siminov's excellent LibYAML.
    LibYAML is generally considered to be the best C YAML 1.1 implementation.

    This module defines the functions dump, load, and configure within the
    global yaml table.

    Portions of this software were inspired by Perl's YAML::LibYAML module by
    Ingy döt Net.
  ]],
  homepage = "https://github.com/craigbarnes/lua-yaml"
}

external_dependencies = {
  platforms = {
    unix = {
      YAML = {
        header = "yaml.h"
      }
    }
  }
}

source = {
  url = "git://github.com/craigbarnes/lua-yaml.git",
  tag = "1c4f63388a"
}

build = {
  platforms = {
    unix = {
      type = "builtin",
      modules = {
        yaml = {
            sources = {"lyaml.c", "b64.c"},
            libraries = "yaml",
            incdirs = "$(YAML_INCDIR)",
            libdirs = "$(YAML_LIBDIR)"
          }
        }
    }
  }
}
