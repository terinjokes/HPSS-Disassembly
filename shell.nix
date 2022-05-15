{ pkgs ? import <nixpkgs> { } }:

with pkgs;

mkShell { buildInputs = [ gup rgbds ]; }
