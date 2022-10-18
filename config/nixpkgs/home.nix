{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "alfurqani";
  home.homeDirectory = "/home/alfurqani";

  # home.packages = with pkgs; [
  defaultPkgs = with pkgs; [
    neovim  vim  tmux  btop  htop  cmus  cava  neofetch  yt-dlp  speedtest-cli  vifm  ytmdl  fish  zsh  starship  rcm  duf  exa  bat  nextdns  adguardhome  git  protonvpn-gui  protonvpn-cli  firewalld  nordic  whitesur-icon-theme  whitesur-icon-theme  nordzy-icon-theme  
  ];

  # FISH
  programs.fish = {
    enable = true;
    shellAliases = {
      ll	= "exa -1 -g -l --icons -s type";
      lla	= "exa -1 -g -l --icons -s type -a";
      llt	= "exa -1 -g -l --icons -s type -T";
      llat	= "exa -1 -g -l --icons -s type -a -T";

      n		= "sudo nixos-rebuild switch";
      conix	= "sudo nvim /etc/nixos/configuration.nix";
      
      y		= "yt-dlp";
      g		= "git";
      ge	= "git clone";
      c		= "cd";
      d		= "cd ..";
      v		= "vim";
      nv	= "nvim";
      t 	= "tmux";
      e		= "exit";
      lv	= "lvim";
      sp	= "speedtest-cli";
      py	= "python";
      py3	= "python3";
      cl	= "clear";
      s		= "sudo su";
      mkd	= "mkdir";
      rm	= "rm";
      rmf 	= "rm -rf"; 
      a		= "aria2c";
      vf	= "vifm";
    };
  }; 

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

}
