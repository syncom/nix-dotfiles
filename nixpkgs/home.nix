{ config, pkgs, ... }:

{
  imports = [
    ./programs.nix
    ./services.nix
  ];

  home.packages = [
    pkgs.stack
    pkgs.gnumake
    pkgs.tmux
    pkgs.tree
    pkgs.ihaskell
    pkgs.neomutt
    pkgs.w3m
  ];
  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "nshang";
  home.homeDirectory = "/home/nshang";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";
}
