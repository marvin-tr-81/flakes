{ pkgs, ... }:

{
  # 1. Enable the CUPS printing service
  services.printing.enable = true;

  # 2. Enable Avahi (Discovery). This is the most important part!
  services.avahi = {
    enable = true;
    nssmdns4 = true; # Helps Linux find '.local' addresses
    openFirewall = true; # Opens the network ports for discovery
  };

  # 3. Add your user to the printer and scanner groups
  users.users.marvin.extraGroups = [
    "lp"
    "scanner"
  ];

  # 4. Enable Scanning (Driverless eSCL)
  hardware.sane = {
    enable = true;
    extraBackends = [ pkgs.sane-airscan ];
  };
}
