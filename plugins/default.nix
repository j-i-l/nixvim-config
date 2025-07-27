{inputs, pkgs, ...}: {
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./snacks
  ];

  # colorschemes.gruvbox.enable = true;

  plugins = {
     lualine.enable = true;
     lazy = {
        enable = true;
     };
     # lz-n = {
     #    enable = true;
     #    autoLoad = true;
     # };
     treesitter.enable = true;
  };
}
