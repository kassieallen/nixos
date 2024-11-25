# XDG configuration
{ pkgs, ... }: {
  xdg = {
    autostart.enable = true;
    portal = {
      enable = true;
      wlr.enable = true;
      config = {
        common.default = "*";
        # qtile.default = [ "wlr" "gtk" ];
      };
      extraPortals = with pkgs; [
        xdg-desktop-portal-gtk
        xdg-desktop-portal-wlr
      ];
    };
    environment.systemPackages = with pkgs; [ xdg-utils ];
  };
}
