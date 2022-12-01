let
  more = { pkgs, ... }: {
    programs = {
      bat.enable = true;
in
  ./alacritty
