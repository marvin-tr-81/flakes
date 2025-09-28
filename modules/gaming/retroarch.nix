{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    (retroarch.withCores (
      cores: with cores; [
        fbneo
      ]
    ))

    # emulationstation-de

  ];
}
