{ pkgs, ... }:
{

  # Enable dconf (System Management Tool)
  programs.dconf.enable = true;

  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "marvin" ];

  virtualisation = {
    libvirtd = {
      enable = true;
      qemu = {
        swtpm.enable = true;
        ovmf.enable = true;
        ovmf.packages = [ pkgs.OVMFFull.fd ];
      };
    };
    spiceUSBRedirection.enable = true;
  };

  services.spice-vdagentd.enable = true;

  networking.firewall.trustedInterfaces = [ "virbr0" ];

  environment.systemPackages = with pkgs; [
    virt-manager
    virt-viewer
    spice
    spice-gtk
    spice-protocol
    win-virtio
    win-spice
    adwaita-icon-theme
  ];

}
