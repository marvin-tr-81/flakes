{ pkgs, ... }:

{

  # Enable bluetooth
  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;

  # Enable graphics
  hardware.graphics.enable = true;

  # Enable ZSA keyboard
  hardware.keyboard.zsa.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    wireplumber.enable = true;
  };

  # Enable touchpad support (enabled default in most desktopManager).
  services.libinput.enable = true;

  # Background continous garbage collection for blocks missed by async discard
  services.fstrim.enable = true;

  # Enable zram swap
  zramSwap = {
    enable = true;
    algorithm = "zstd";
    memoryPercent = 100;
  };

}
