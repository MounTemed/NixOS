{ pkgs, zen-browser, ... }: {
  home.packages = with pkgs; [
    clang
    fastfetch
    fira-code
    obs-studio
    photoqt
    rsclock
    unzip
    telegram-desktop
    pavucontrol
    nautilus
    adwaita-qt6
    flat-remix-icon-theme
    noto-fonts
  ];
  programs.git.enable = true;
}