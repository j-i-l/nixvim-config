# Nixvim Configuration

This is a Flake nixvim standalone configuration.


# Usage

## Standalone

If you want to checkout this neovim coniguration, simply run:

```
nix run "git+https://codeberg.org/j-i-l/nixvim-config"
```

or, if you want to install it from the GitHub mirror:

```
nix run github:j-i-l/nixvim-config
```

## Include in Configuration

To use this configuration you must first inclue the repository in your `inputs`:

```nix
# flake.nix
{
   inputs = {
     # nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
     # ...
     j-i-l-nixvim.url = "git+https://codeberg.org/j-i-l/nixvim-config";
     # ...
   };
 
```

### NixOS

Simply add the imported flake package to your `systemPackages` and you are good to go:

```nix
{ inputs, system, ...} : {
    # ...
    environment.systemPackages = [
        # ...
        inputs.nixvim-config.packages.${system}.default
        # ...
    ];
    # ...
}
```

### Home Manager

With home-manager you can simply add the imported flake package and you are good to go:

```nix
{ inputs, system, ...} : {
    # ...
    home.packages = [
      # ...
      inputs.j-i-l-nixvim.packages.${system}.default
      # ...
    ];
    # ...
}
```

_Note:_ This examples assuems `system` to be set. You can also replace `${system}` by your specific system.
For example:

```nix
  inputs.j-i-l-nixvim.packages."x86_64-linux".default
```
