{
  enabled = true;

  sections = [
    {
      section = "header";
    }
    {
      section = "terminal";
      title = ''config by'';
      cmd = ''ascii-image-converter ${builtins.path { 
          path = ./j-i-l.png; 
          name = "j-i-l.png"; 
        }} -C -c -H 20'';
      height = 22;
      indent = 7;
    }
    {
      title = ''j-i-l 👾'';
      align = "center";
    }
    # {
    #   section = "startup";
    # }
    {
      pane = 2;
      icon = " ";
      title = "Keymaps"; 
      section = "keys";
      indent = 2;
      gap = 0;
      padding = 1;
    }
  ];

}
