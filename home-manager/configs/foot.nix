{
  programs.foot = {
    enable = true;
    server.enable = true;

    settings = {
      main = {
        font = "JetBrains Mono:size=16";
        term = "foot";
      };
      # cursor = {
      #   style = "beam";
      # };
      mouse = {
        hide-when-typing = "yes";
      };
    };
  };
}
