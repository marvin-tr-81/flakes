{
  wayland.windowManager.hyprland = {

    settings = {

      plugin.hyprbars.bar_height = 20;
      plugin.hyprbars.hyprbars-button = [
        "rgb(ff4040), 10, 󰖭, hyprctl dispatch killactive"
        "rgb(eeee11), 10, , hyprctl dispatch fullscreen 1"
      ];
      plugin.hyprbars.on_double_click = "hyprctl dispatch fullscreen 1";

    };

  };
}
