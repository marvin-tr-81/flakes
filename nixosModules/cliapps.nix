{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    #nixvim
  ];
}
