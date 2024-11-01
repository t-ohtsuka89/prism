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
        cli = import ./packages/cli/default.nix { inherit pkgs; };
        http = import ./packages/http/default.nix { inherit pkgs system; };
        core = import ./packages/core/default.nix { inherit pkgs system; };
        http-server = import ./packages/http-server/default.nix { inherit pkgs system; };

        prism-cli = cli.package;
        prism-core = core.package;
        prism-http = http.package;
        prism-http-server = http-server.package;
        app = flake-utils.lib.mkApp {
          drv = prism-cli;
          exePath = "/bin/prism";
        };
        overlays = final: prev: {
          prism-cli = prism-cli;
          prism-http = prism-http;
          prism-core = prism-core;
          prism-http-server = prism-http-server;
        };
      in
      {
        packages = {
          prism-cli = prism-cli;
          prism-http = prism-http;
          prism-core = prism-core;
          prism-http-server = prism-http-server;
        };
        apps.prism-cli = app;
        apps.default = app;
        nodeDependencies = cli.nodeDependencies;
        nodeShell = cli.shell;
        inherit overlays;
      }
    );
}
