{
  description = "Filter to make GitHub less social";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    sourcehut-asciidoc-renderer.url = "sourcehut:~toastal/sourcehut-asciidoc-renderer";
  };

  outputs =
    { self
    , nixpkgs
    , sourcehut-asciidoc-renderer
    , ...
    }@inputs:
    let
      name = "github-less-social";

      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.unix;

      nixpkgsFor = forAllSystems (system: import nixpkgs {
        inherit system;
        config = { };
        overlays = [ ];
      });
    in
    {
      packages = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in {
          "${name}-readme" = sourcehut-asciidoc-renderer.renderAsciiDoc {
            inherit system;
            baseDir = ./.;
            sourceFile = ./README.adoc;
          };
        });

      devShells = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in {
          ${name} = pkgs.mkShell {
            inherit name;
            inputsFrom = builtins.attrValues self.packages.${system};
            buildInputs = with pkgs; [
              nickel
              nixpkgs-fmt
              topiary
            ];
          };

          default = self.devShells.${system}.${name};
        });
    };
}
