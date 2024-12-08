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
    waypaper
    wi-clipboard
    wofi
  ];
  programs.git.enable = true;
  programs.vscode.enable = true;
  programs.pavucontrol.enable = true;
  programs.telegram-desktop.enable = true;
  programs.nautilus.enable = true;
}