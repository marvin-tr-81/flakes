{ pkgs, ... }:

{
  # Enable flakes
  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.timeout = 0;

  boot.initrd.verbose = true;
  boot.initrd.compressor = "zstd";

  boot.kernelParams = [
    "mem_sleep_default=s2idle"
  ];

  # Use latest kernel.
  boot.kernelPackages = pkgs.linuxPackages_latest;

  # Disable the network-online boot dependency
  systemd.services.NetworkManager-wait-online.enable = false;

  # Configure network connections interactively with nmcli or nmtui.
  networking.networkmanager.enable = true;

  # Enable polkit
  security.polkit.enable = true;

  # Set timezone automatically
  services.automatic-timezoned.enable = true;
  services.geoclue2.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.marvin = {
    isNormalUser = true;
    extraGroups = [
      "wheel"
      "networkmanager"
    ]; # Enable ‘sudo’ for the user.
    shell = pkgs.zsh;
    packages = with pkgs; [
      tree
    ];
  };

  programs.firefox.enable = true;
  programs.zsh.enable = true;

  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile.
  # You can use https://search.nixos.org/ to find more packages (and options).
  environment.systemPackages = with pkgs; [
    vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    git
  ];

  services = {
    syncthing = {
      enable = true;
      user = "marvin";
      dataDir = "/home/marvin/Documents";
      configDir = "/home/marvin/Documents/.config/syncthing";
      openDefaultPorts = true;
    };
  };

  # Disable conflicting power management services
  services.power-profiles-daemon.enable = false;

  # Enable TLP
  services.tlp = {
    enable = true;

    settings = {
      # CPU Performance & Power Scaling
      CPU_SCALING_GOVERNOR_ON_AC = "performance";
      CPU_SCALING_GOVERNOR_ON_BAT = "powersave";

      CPU_ENERGY_PERF_POLICY_ON_AC = "performance";
      CPU_ENERGY_PERF_POLICY_ON_BAT = "power";

      # Battery Charge Thresholds (ThinkPad / Supported Laptops)
      # Keeps battery in health sweet-spot (e.g., 45% - 80%)
      START_CHARGE_THRESH_BAT0 = 45; # Charge starts below 45%
      STOP_CHARGE_THRESH_BAT0 = 80; # Charge stops at 80%

      # Optional: Radio Device Management (WiFi/Bluetooth on dock/undock)
      # DEVICES_TO_DISABLE_ON_STARTUP = "bluetooth";

      # PCI / USB Power Saving
      NATACPI_ENABLE = 1;
      TPACPI_ENABLE = 1;
      TPSMAPI_ENABLE = 1;
    };
  };

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Select internationalisation properties.
  # i18n.defaultLocale = "en_US.UTF-8";
  # console = {
  #   font = "Lat2-Terminus16";
  #   keyMap = "us";
  #   useXkbConfig = true; # use xkb.options in tty.
  # };

  # Enable the X11 windowing system.
  # services.xserver.enable = true;

  # Configure keymap in X11
  # services.xserver.xkb.layout = "us";
  # services.xserver.xkb.options = "eurosign:e,caps:escape";

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Automatic Storage Maintenance
  nix.gc = {
    automatic = true;
    dates = "weakly";
    options = "--delete-older-than 14d";
  };
  nix.settings.auto-optimise-store = true;

}
