{ ... }: {

  imports = [
    ./hypr.nix
  ];

  wayland.windowManager.hyprland = {
    enable = true;
  };
}
