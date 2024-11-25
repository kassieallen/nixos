# Home-manager configuration
{ config, pkgs, inputs, ... }: {
  nixpkgs.config.allowUnfree = true;
  programs.home-manager.enable = true;

  home = {
    username = "kassie";
    homeDirectory = "/home/kassie";
    packages = with pkgs; [
      btop
      grim
      slurp
      libnotify
      playerctl
      pamixer
      cbonsai
      firefox
    ];

    sessionVariables = {
      BROWSER = "firefox";
      EDITOR = "nvim";
    };
  };

  fonts.fontconfig.enable = true;

  gtk = {
    enable = true;
    theme = {
      package = pkgs.gnome-themes-extra;
      name = "Adwaita-dark"
    };
  };

  xdg.userDirs = {
    enable = true;
    desktop = null;
    templates = null;
    publicShare = null;
    createDirectories = true;
  };

  programs.bash = {
    enableCompletion = true;
  };

  services.flatpak = {
    enable = true;
    remotes = [
      {
        name = "flathub";
        location = "https://dl.flathub.org/repo/flathub.flatpakrepo";
      }
    ];
    packages = [
      "com.spotify.Client"
      "dev.vencord.Vesktop"
      "io.mrarm.mcpelauncher"
    ];
  };
  home.stateVersion = "25.05";
}
