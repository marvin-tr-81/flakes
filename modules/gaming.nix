{ pkgs, ... }:

{
  programs.steam = {
    enable = true;
    gamescopeSession.enable = true;
  };

  programs.gamemode.enable = true;

  environment.systemPackages = with pkgs; [
    # heroic
    protonup-qt
    (pkgs.heroic.override {
      extraPkgs =
        pkgs': with pkgs'; [
          python3
          curl
          openssl
          gnutls
        ];
    })
    (retroarch.withCores (
      cores: with cores; [
        fbneo
        snes9x
        genesis-plus-gx
      ]
    ))
  ];
}
