{ pkgs, zen-browser, ... }: {
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
    adwaita-qt6
    flat-remix-icon-theme
    noto-fonts
  ];
  programs.git.enable = true;
  # programs.vscode.enable = true;
}