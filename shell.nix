{ nixpkgs ? import <nixpkgs> {} }:

with nixpkgs;

haskell.lib.buildStackProject {
  name = "sparkle";
  ghc = haskell.compiler.ghcHEAD;
}
