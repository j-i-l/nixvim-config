{inputs, pkgs, ...}: {

  globals.mapleader = ",";
  
  keymaps = [ ]
    ++ import ./snacks.nix;
}
