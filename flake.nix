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

      supportedSystems = [ "x86_64-linux" ];

      forAllSystems = f: nixpkgs.lib.genAttrs supportedSystems (system: f system);

    in
    {
      packages = forAllSystems (system:
        let
          pkgs = import nixpkgs { inherit system; };
        in
        {
          "${name}-readme" = sourcehut-asciidoc-renderer.renderAsciiDoc {
            inherit system;
            baseDir = ./.;
            sourceFile = ./README.adoc;
          };
        });
    };
}
