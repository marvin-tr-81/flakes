# Edit this configuration file to define what should be installed on
# your system. Help is available in the configuration.nix(5) man page, on
# https://search.nixos.org/options and in the NixOS manual (`nixos-help`).

{
  ...
}:

{
  imports = [
    # Include the results of the hardware scan.
    ./hardware-configuration.nix
  ];

  networking.hostName = "marvin-thinkpad"; # Define your hostname.

  services.fwupd.enable = true;

  services.kanata.keyboards.internalKeyboard.devices = [
    "/dev/input/by-path/platform-i8042-serio-0-event-kbd"
  ];

  # SSD optimizations
  fileSystems = {
    "/".options = [
      "noatime"
      "ssd"
      "discard=async"
    ];
    "/home".options = [
      "noatime"
      "ssd"
      "discard=async"
    ];
    "/nix".options = [
      "noatime"
      "ssd"
      "discard=async"
    ];
    "/boot".options = [
      "noatime"
      "nodiratime"
      "fmask=0077"
      "dmask=0077"
      "flush"
    ];
  };

  # This option defines the first version of NixOS you have installed on this particular machine,
  # and is used to maintain compatibility with application data (e.g. databases) created on older NixOS versions.
  #
  # Most users should NEVER change this value after the initial install, for any reason,
  # even if you've upgraded your system to a new NixOS release.
  #
  # This value does NOT affect the Nixpkgs version your packages and OS are pulled from,
  # so changing it will NOT upgrade your system - see https://nixos.org/manual/nixos/stable/#sec-upgrading for how
  # to actually do that.
  #
  # This value being lower than the current NixOS release does NOT mean your system is
  # out of date, out of support, or vulnerable.
  #
  # Do NOT change this value unless you have manually inspected all the changes it would make to your configuration,
  # and migrated your data accordingly.
  #
  # For more information, see `man configuration.nix` or https://nixos.org/manual/nixos/stable/options#opt-system.stateVersion .
  system.stateVersion = "26.05"; # Did you read the comment?

}
