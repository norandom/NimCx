# Package

version       = "0.9.7"
author        = "qqTop"
description   = "Color your Nim. Utilities for a happy terminal."
license       = "MIT"


# Dependencies

requires  "nim >= 0.12.1"
requires  "https://github.com/BlaXpirit/nim-random"
requires  "https://bitbucket.org/lyro/strfmt"


task tests, "Run tests":
    exec "nim c -r cx"