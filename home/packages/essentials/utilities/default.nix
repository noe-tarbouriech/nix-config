{ pkgs, ... }:

{
  imports = [
    ./alacritty.nix
    ./fish.nix
    ./starship.nix
    ./mpv.nix
    ./git.nix
    ./gpg.nix
  ];

  home.packages = with pkgs; [
    # file
    ranger

    # office
    libreoffice-fresh
    obsidian
    zotero
    zathura

    # communication
    discord
    signal-desktop
    mailspring
    libsecret #dependency

    # image
    feh
    inkscape
    gimp

    # video
    obs-studio

    # terminal
    fzf
    tmux

  ];

}
