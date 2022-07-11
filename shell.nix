{ pkgs ? import <nixpkgs> { } }:
with pkgs;
mkShell {
  buildInputs = [
    nixpkgs-fmt
    elmPackages.elm
    elmPackages.elm-format
    elmPackages.elm-language-server
    nodejs
    yarn
  ];

  shellHook = ''
    echo "Welcome!"
  '';
}