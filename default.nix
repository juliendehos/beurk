{ pkgs ? import <nixpkgs> {} }:

pkgs.ocamlPackages.buildDunePackage {
  pname = "beurk";
  version = "0.1";
  minimumOCamlVersion = "4.10";
  src = ./.;
  buildInputs = with pkgs.ocamlPackages; [ 
    base
    stdio
    utop
  ];
}

