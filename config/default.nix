{inputs, pkgs, ...}: {

  opts = {
    number = true;
    relativenumber = true;
  };

  editorconfig.enable = true;
  enableMan = false;
  luaLoader.enable = true;
  extraPackages = with pkgs; [
    (python3.withPackages (python-pkgs: [
        python-pkgs.pylatexenc
    ]))
    black
    # -- Snacks
    # -- Snacks.image
    ghostscript
    tectonic
    texliveBasic
    mermaid-cli
    # -- Snacks.picker
    fd
    sqlite
    # -- Snacks.dashboard
    ascii-image-converter  # used to load image
    chafa
    # -- Snacks.lazygit
    lazygit
  ];

}

