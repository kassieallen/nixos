# User configuration
{ inputs, ... }: {
  users.users = { 
    kassie = {
      isNormalUser = true;
      extraGroups = [ "networkmanager" "wheel" ];
    };
  };

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."kassie" = import ../home;
  };
}
