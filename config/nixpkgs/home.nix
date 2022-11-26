{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.

  home.username = "alfurqani";
  home.homeDirectory = "/home/alfurqani";

  home.stateVersion = "22.05";

  # imports = 
  # [
  #   ./modules
  # ];

  programs =
  {
    home-manager.enable = true;

    ## ALACRITTY ##
    alacritty = 
    {
    enable = true;
    settings = 
      {
        # opacity = 1.0;
	dynamic_padding = true;
	size = 14.0;
	selection.save_to_clipboard = true; 
	window =
	{
	  opacity = 1.0;
	  decorations = "none";
	  padding = 
	  {
	    x = 5;
	    y = 5;
	  };
          startup_mode = "Fullscreen";
	};
      };
    };

    ## MPV ##
    mpv =
    {
      enable = true;
      config = 
      {
      sub-font = "Comic Sans";
      sub-font-size = 35;
      sub-color = "#FFFE25";
      window = "fullscreen";
      speed = 1.15;
      playback = "save-position-on-quit";
      };
    };

    qutebrowser =
    {
    enable = true;
    enableDefaultBindings = true;
    };
  };

  # Let Home Manager install and manage itself.

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
}
