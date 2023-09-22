{
  description = "Filter to make GitHub less social";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    sourcehut-restructuredtext-renderer = {
      url = "sourcehut:~toastal/sourcehut-restructuredtext-renderer";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, ... }@inputs:
    let
      name = "github-less-social";

      forAllSystems = nixpkgs.lib.genAttrs nixpkgs.lib.platforms.unix;

      nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
    in
    {
      packages = forAllSystems (system:
        let pkgs = nixpkgsFor.${system}; in {
          readme = inputs.sourcehut-restructuredtext-renderer.renderReStructuredText {
            inherit system;
            baseDir = ./.;
            sourceFile = ./README.rst;
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
