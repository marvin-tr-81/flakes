{
  programs.mpv = {

    enable = true;

    # mpv.conf options
    config = {
      # Video & GPU driver settings
      vo = "gpu-next";
      gpu-api = "vulkan"; # or "opengl" depending on your GPU setup
      hwdec = "auto-safe";

      # Audio & Subtitles
      slang = "eng,en,tur,tr,fre,fr";
      alang = "jpn,jp,eng,en";
      sub-auto = "fuzzy";
      sub-font = "Sans";
      sub-font-size = 40;

      # Window & UI
      keep-open = "yes"; # Don't auto-close when video finishes
      autofit-larger = "90%x90%";
      cursor-autohide = 1000;
    };

    # input.conf keybindings
    bindings = {
      "l" = "seek 5";
      "h" = "seek -5";
      "j" = "seek -60";
      "k" = "seek 60";
      "S" = "cycle sub";
      "A" = "cycle audio";
    };
  };
}
