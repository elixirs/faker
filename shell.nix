let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.05";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShellNoCC {
  packages = with pkgs; [
    nixpkgs.erlang_27.elixir_1_17
  ];

  shellHook = ''
    mix deps.get
  '';
}
