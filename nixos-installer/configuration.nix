{config, pkgs, ...}: {
  # ssh-agent is used to pull my private secrets repo from github when deploying my nixos config.

  ##imports =
    #[ # Include the results of the hardware scan.
     # ./hardware-configuration.nix
    #];


  #################################################################################
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    git
    gnumake
    wget
    just # a command runner(replacement of gnumake in some cases)
    curl
    nix-output-monitor
  ];
  ##networking = {
    # configures the network interface(include wireless) via `nmcli` & `nmtui`
    ##defaultGateway = "197.93.11.132";

  ##};


##Display Manager
#services.xserver.enable = true;
#services.displayManager.sddm.enable = true;
#services.desktopManager.plasma6.enable = true;

  system.stateVersion = "24.05";
}
