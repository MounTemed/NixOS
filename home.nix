{ config, pkgs, inputs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "laimick";
  home.homeDirectory = "/home/laimick";

  programs.bash = {
    enable = true;
    shellAliases =
    let
      flakePath = "~/nixos"; 
    in {
      rebuild = "sudo nixos-rebuild switch --flake ${flakePath}";
      hms  = "home-manager switch --flake ${flakePath}";
    };
  };
  
  imports = [
    ./pkgs
    #./system/
    ./home
    #./modules/
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
