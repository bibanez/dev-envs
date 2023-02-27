{
  description = "Dev environment templates";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  
  outputs = { self, flake-utils, nixpkgs }: {
    templates = rec {
      cpp = {
        path = ./cpp;
        description = "C/C++ development environment";
      };
      ocaml = {
        path = ./ocaml;
        description = "OCaml development environment";
      };
    };
  };
}
