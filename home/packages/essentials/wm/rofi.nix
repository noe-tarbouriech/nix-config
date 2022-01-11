{ config, pkgs, ... }:

{
  programs.rofi = {
    enable = true;
    terminal = "${pkgs.alacritty}/bin/alacritty";
    plugins = with pkgs; [
      rofi-calc
    ];

    font = "FantasqueSansMono 14";

    theme = builtins.toString (pkgs.writeText "rofi-theme" ''
      /*******************************************************************************
      * ROFI VERTICAL THEME USING THE NORD COLOR PALETTE 
      * User                 : LR-Tech               
      * Theme Repo           : https://github.com/lr-tech/rofi-themes-collection
      * Nord Project Repo    : https://github.com/arcticicestudio/nord
      *******************************************************************************/
      configuration {
        display-ssh     : "";
        display-drun    : "";
        display-window  : "";
      }
      * {
          nord0   : #2e3440;
          nord1   : #3b4252;
          nord2   : #434c5e;
          nord3   : #4c566a;

          nord4   : #d8dee9;
          nord5   : #e5e9f0;
          nord6   : #eceff4;

          nord7   : #8fbcbb;
          nord8   : #88c0d0;
          nord9   : #81a1c1;
          nord10  : #5e81ac;
          nord11  : #bf616a;

          nord12  : #d08770;
          nord13  : #ebcb8b;
          nord14  : #a3be8c;
          nord15  : #b48ead;

          border-color: #817F7F;
          background-color    : @nord1;
          text-color          : @nord4;

          margin              : 0;
      }
      #window {
          location            : center;
          y-offset            : -200;
          width               : 480;
          background-color    : @nord0;
          border              : 2;
          border-color        : @border-color;
      }
      #mainbox {
          spacing             : 0;
      }
      #inputbar {
          background-color    : @nord0;
          spacing             : 0;
      }
      #prompt {
          padding             : 12 12 0;
          background-color    : @nord0;
          vertical-align      : 0;
      }
      #entry {
          padding             : 8 0;
          background-color    : @nord0;
      }
      #case-indicator {
          padding             : 8;
          background-color    : @nord0;
      }
      #message {
          padding             : 0;
      }
      #textbox {
          padding             : 8;
          background-color    : @nord8;
          text-color          : @nord0;
      }
      #listview {
          lines               : 8;
          columns             : 1;
          fixed-height        : false;
          spacing             : 0;
      }
      #element {
          padding             : 8;
          spacing             : 8;
      }
      #element normal normal {
          text-color          : @nord4;
      }
      #element normal urgent {
          text-color          : @nord13;
      }
      #element normal active {
          text-color          : @nord8;
      }
      #element selected normal {
          background-color    : @nord8;
          text-color          : @nord0;
      }
      #element selected urgent {
          background-color    : @nord13;
          text-color          : @nord0;
      }
      #element selected active {
          background-color    : @nord8;
          text-color          : @nord0;
      }
      #element-icon {
          size                : 0.8em;
      }
      #mode-switcher {
          padding             : 0;
      }
    '');
  };
}
