{ pkgs ? import <nixpkgs> {} }:

pkgs.ocamlPackages.buildDunePackage {
  pname = "beurk";
  version = "0.1";
  minimumOCamlVersion = "4.10";
  src = ./.;
  useDune2 = true;
  buildInputs = with pkgs.ocamlPackages; [ 
    ocamlbuild
    base
    stdio
    utop
  ];
}

