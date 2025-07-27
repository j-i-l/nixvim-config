{
  description = "A nixvim configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixpkgs-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix.url = "github:numtide/treefmt-nix";
  };

  outputs =
    {
      nixvim,
      flake-parts,
      treefmt-nix,
      ...
    } @ inputs:
    let
      nvim_config = {inputs, pkgs, ...}:
       (
         (import ./config { inherit inputs pkgs; })
         // (import ./colorschemes/bamboo.nix { inherit inputs pkgs; })
         // (import ./keymaps { inherit inputs pkgs; })
         // (import ./plugins { inherit inputs pkgs; })
       );
    in
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      imports = [ inputs.treefmt-nix.flakeModule ];

      perSystem =
        { pkgs, system, self, ... }:
        let
          nixvimLib = nixvim.lib.${system};
          nixvim' = nixvim.legacyPackages.${system};
          nvim = nixvim'.makeNixvimWithModule {
            inherit pkgs;
            module = nvim_config;
            extraSpecialArgs = { };
          };
          _module.args.pkgs = import self.inputs.nixpkgs {
            inherit system;
            config.allowUnfree = true;
          };
        in
        {
          _module.args.pkgs = import inputs.nixpkgs {
            inherit system;

            config = {
              allowUnfree = true;
            };

            overlays = [
              (final: _prev: {
                master = import inputs.nixpkgs-master {
                  system = final.system;
                  config.allowUnfree = true;
                };
              })
              (final: _prev: {
                stable = import inputs.nixpkgs-stable {
                  system = final.system;
                  config.allowUnfree = true;
                };
              })
              # (final: prev: {
              #   vimPlugins = prev.vimPlugins // {
              #     avante-nvim = prev.vimPlugins.avante-nvim.overrideAttrs (oldAttrs: {
              #       src = pkgs.fetchFromGitHub {
              #         owner = "yetone";
              #         repo = "avante.nvim";
              #         rev = "6227d5c34051a132a573fb4d94e9039beb6d8968";
              #         hash = "sha256-1Sqv7ekSsSMIvoQ8gVxkNiDzUkZkh03dBjeBsRl2/ZQ=";
              #       };
              #     });
              #   };
              # })
            ];
          };

          checks = {
            default = nixvimLib.check.mkTestDerivationFromNvim {
              inherit nvim;
              name = "j-i-l's nixvim config";
            };
          };

          packages = {
            default = nvim;
            nvim = nvim;
          };

          treefmt = {
            projectRootFile = "flake.nix";
            programs.nixpkgs-fmt.enable = true;
          };

          devShells = {
            default = pkgs.mkShell {
              buildInputs = with pkgs; [
                just
                nix-fast-build
              ];

              shellHook = ''
              '';
            };
          };
        };
    };
}
