{ pkgs, ... }:

{

  environment.systemPackages = with pkgs; [

    libreoffice-fresh
    hunspell
    hunspellDicts.en_US
    hunspellDicts.tr_TR
    hunspellDicts.fr-any

  ];

}
