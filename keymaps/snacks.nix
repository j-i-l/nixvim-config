[
  # -- picker
  {
    mode = "n";
    key = "<leader>ss";
    action = "<cmd>lua require('snacks').picker.smart()<CR>";
    options = {
      desc = "Smart Find Files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sb";
    action = "<cmd>lua require('snacks').picker.buffers()<CR>";
    options = {
      desc = "Buffers";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sB";
    action = "<cmd>require('snacks').picker.git_branches()<CR>";
    options = {
      desc = "Git Branches";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sf";
    action = "<cmd>lua require('snacks').picker.files()<CR>";
    options = {
      desc = "Files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sr";
    action = "<cmd>lua require('snacks').picker.recent()<CR>";
    options = {
      desc = "Find recently edited files";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sh";
    action = "<cmd>lua require('snacks').picker.help()<CR>";
    options = {
      desc = "Help tags";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>st";
    action = "<cmd>lua require('snacks').picker.grep()<CR>";
    options = {
      desc = "Live Grep";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sp";
    action = "<cmd>lua require('snacks').picker.projects()<CR>";
    options = {
      desc = "Projects";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sl";
    action = "<cmd>lua require('snacks').picker.lines()<CR>";
    options = {
      desc = "Lines in current file";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sz";
    action = "<cmd>lua require('snacks').picker.zoxide()<CR>";
    options = {
      desc = "Search for projects via zoxide";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sh";
    action = "<cmd>lua require('snacks').picker.command_history()<CR>";
    options = {
      desc = "Command History";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>sn";
    action = "<cmd>lua require('snacks').picker.notifications()<CR>";
    options = {
      desc = "Notification History";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>se";
    action = "<cmd>lua require('snacks').explorer()<CR>";
    options = {
      desc = "File Explorer";
      silent = true;
    };
  }
  # -- git
  {
    mode = "n";
    key = "<leader>gg";
    action = "<cmd>lua require('snacks').lazygit()<CR>";
    options = {
      desc = "Lazygit";
      silent = true;
    };
  }
  {
    mode = ["n" "v"];
    key = "<leader>gB";
    action = "<cmd>lua require('snacks').gitbrowse()<CR>";
    options = {
      desc = "Git Browse";
      silent = true;
    };
  }
  # -- notify
  {
    mode = "";
    key = "<leader>nh";
    action = "<cmd>lua require('snacks').notifier.hide()<CR>";
    options = {
      desc = "Dismiss all notifications";
      silent = true;
    };
  }
  {
    mode = "n";
    key = "<leader>nH";
    action = "<cmd>lua require('snacks').notifier.show_history()<CR>";
    options = {
      desc = "Notification History";
      silent = true;
    };
  }
  # -- terminal
  {
    mode = "n";
    key = "<C-/>";
    action = ''<cmd>lua require('snacks').terminal()<CR>'';
    options = {
      desc = "Toggle Termianl";
      silent = true;
    };
  }
]
