{ lib, inputs, pkgs, ... }: {
  imports = [
    ./settings.nix
    ./rules.nix
    ./visuals.nix
    ./binds.nix
    ./env.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;

  };
}