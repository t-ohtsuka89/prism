{
  description = "Prism CLI";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        inherit (import ./packages/cli/default.nix { inherit pkgs; })
          sources
          package
          shell
          nodeDependencies
          ;
        prism-cli = package;
        app = flake-utils.lib.mkApp {
          drv = package;
          exePath = "/bin/prism";
        };
        overlays = final: prev: { prism-cli = prism-cli; };
      in
      {
        packages.prism-cli = prism-cli;
        packages.default = prism-cli;
        apps.prism-cli = app;
        apps.default = app;
        nodeDependencies = nodeDependencies;
        nodeShell = shell;
        inherit overlays;
      }
    );
}
