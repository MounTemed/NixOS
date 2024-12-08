{ pkgs, ... }: {
  home.packages = with pkgs; [
    clang
    fastfetch
    fira-code
    obs-studio
    photoqt
    rsclock
    swww
    unzip
    telegram-desktop
    waypaper
    wl-clipboard
    pavucontrol
    nautilus
    wofi
  ];
  programs.git.enable = true;
  # programs.vscode.enable = true;
}