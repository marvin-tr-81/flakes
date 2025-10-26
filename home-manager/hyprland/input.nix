{

  wayland.windowManager.hyprland.settings = {

    #############
    ### INPUT ###
    #############

    # https://wiki.hyprland.org/Configuring/Variables/#input
    input = {
      kb_layout = "tr";
      kb_variant = "alt";
      # kb_model =
      # kb_options = caps:escape, shift:both_capslock
      kb_options = "shift:both_capslock";
      # kb_rules =

      repeat_delay = 250;
      repeat_rate = 35;

      follow_mouse = 1;

      sensitivity = 0.5; # -1.0 - 1.0, 0 means no modification.

      touchpad = {
        natural_scroll = true;
      };
    };

    # https://wiki.hyprland.org/Configuring/Variables/#gestures
    gesture = [
      "3, horizontal, workspace"
    ];

    # Example per-device config
    # See https://wiki.hyprland.org/Configuring/Keywords/#per-device-input-configs for more
    device = {
      name = "epic-mouse-v1";
      sensitivity = -0.5;
    };

  };
}
