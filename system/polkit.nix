# Polkit configuration
{ pkgs, ... }: {
  security.polkit.enable = true;
  environment.SessionVariables = {
    POLKIT_AUTH_AGENT = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
  };
}
