{
  programs.kitty = {
    enable = true;

    # Set the default base font size
    settings = {
      font_size = 22.0; # Set your preferred base font size here
    };

    # Declarative keybindings mapped straight to kitty.conf
    keybindings = {
      # Zoom In: Map Ctrl+= directly (+2.0 font size step)
      "ctrl+equal" = "change_font_size all +2.0";

      # Zoom Out: Map Ctrl+- (-2.0 font size step)
      "ctrl+minus" = "change_font_size all -2.0";

      # Reset: Map Ctrl+0 back to default font size
      "ctrl+0" = "change_font_size all 0";
    };

  };
}
