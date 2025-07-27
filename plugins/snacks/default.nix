{
  plugins = {
    snacks = {
        enable = true;
        autoLoad = true;
        settings = {
            dashboard = import ./dashboard;
            lazygit = import ./lazygit.nix;
            bigfile = {
              enabled = true;
              notify = true;
            };
            gitbrowse = {
              enable = true;
            };
            notifier = {
                enabled = true;
                timeout = 3000;
            };
            explorer = {
                enabled = true;
            };
            indent = {
                enabled = true;
            };
            input = {
                enabled = true;
            };
            picker = {
                enabled = true;
            };
            scope = {
                enabled = true;
            };
            scroll = {
                enabled = true;
            };
            statuscolumn = {
                enabled = true;
            };
            quickfile = {
                enabled = true;
            };
            words = {
                debounce = 100;
                enabled = true;
            };
        };
    };
  };
}
