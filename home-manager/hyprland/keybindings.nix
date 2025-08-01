{
  wayland.windowManager.hyprland.settings = {

    ####################
    ### KEYBINDINGSS ###
    ####################

    # See https://wiki.hyprland.org/Configuring/Keywords/
    "$mainMod" = "SUPER"; # Sets "Windows" key as main modifier

    binds = {
      disable_keybind_grabbing = true;
    };

    bind = [
      # Example binds, see https://wiki.hyprland.org/Configuring/Binds/ for more
      "$mainMod, RETURN, exec, $terminal"
      "$mainMod, Q, killactive,"
      "$mainMod, SPACE, exec, $menu"
      # bind = $mainMod, M, exit,
      # "$mainMod, E, exec, $fileManager"
      # "$mainMod, I, exec, $internet"

      "$mainMod, F, togglefloating,"
      "$mainMod, P, pin,"
      "$mainMod, D, pseudo, # dwindle"
      "$mainMod, A, togglesplit, # dwindle"
      "$mainMod, O, setprop, active opaque toggle"

      # Show battery level
      # "$mainMod, B, exec, notify-send $(cat /sys/class/power_supply/BAT1/capacity_level) $(cat /sys/class/power_supply/BAT1/capacity) -h int:value:$(cat /sys/class/power_supply/BAT1/capacity)"
      # Show time
      # "$mainMod, T, exec, notify-send \"`date +%F`\" \"`date +%T`\""

      # Move focus with mainMod + vim motion
      "$mainMod, H, movefocus, l"
      "$mainMod, L, movefocus, r"
      "$mainMod, K, movefocus, u"
      "$mainMod, J, movefocus, d"

      # Swap window with mainMod + SHIFT + vim motion
      "$mainMod SHIFT, H, swapwindow, l"
      "$mainMod SHIFT, L, swapwindow, r"
      "$mainMod SHIFT, K, swapwindow, u"
      "$mainMod SHIFT, J, swapwindow, d"

      # Maximize active window
      "$mainMod, M, fullscreen, 1"
      "$mainMod SHIFT, M, fullscreen, 0"

      # Switch workspaces with mainMod + [0-9]
      "$mainMod, 1, workspace, 1"
      "$mainMod, 2, workspace, 2"
      "$mainMod, 3, workspace, 3"
      "$mainMod, 4, workspace, 4"
      "$mainMod, 5, workspace, 5"
      "$mainMod, 6, workspace, 6"
      "$mainMod, 7, workspace, 7"
      "$mainMod, 8, workspace, 8"
      "$mainMod, 9, workspace, 9"
      "$mainMod, 0, workspace, 10"

      # Move active window to a workspace with mainMod + SHIFT + [0-9]
      "$mainMod SHIFT, 1, movetoworkspace, 1"
      "$mainMod SHIFT, 2, movetoworkspace, 2"
      "$mainMod SHIFT, 3, movetoworkspace, 3"
      "$mainMod SHIFT, 4, movetoworkspace, 4"
      "$mainMod SHIFT, 5, movetoworkspace, 5"
      "$mainMod SHIFT, 6, movetoworkspace, 6"
      "$mainMod SHIFT, 7, movetoworkspace, 7"
      "$mainMod SHIFT, 8, movetoworkspace, 8"
      "$mainMod SHIFT, 9, movetoworkspace, 9"
      "$mainMod SHIFT, 0, movetoworkspace, 10"

      # Example special workspace (scratchpad)
      "$mainMod, S, togglespecialworkspace, magic"
      "$mainMod SHIFT, S, movetoworkspace, special:magic"

      # Scroll through existing workspaces with mainMod + scroll
      "$mainMod, mouse_down, workspace, e+1"
      "$mainMod, mouse_up, workspace, e-1"

      # Scroll through existing workspaces with mainMod + SHIFT + CTRL + vim motion
      "$mainMod, tab, workspace, e+1"
      "$mainMod SHIFT, tab, workspace, e-1"
    ];

    binde = [
      # Resize window with mainMod + CTRL + vim motion
      "$mainMod CTRL, h, resizeactive, -10 0"
      "$mainMod CTRL, j, resizeactive, 0 10"
      "$mainMod CTRL, k, resizeactive, 0 -10"
      "$mainMod CTRL, l, resizeactive, 10 0"

      # Move window with mainMod + ALT + vim motion
      "$mainMod ALT, h, moveactive, -25 0"
      "$mainMod ALT, j, moveactive, 0 25"
      "$mainMod ALT, k, moveactive, 0 -25"
      "$mainMod ALT, l, moveactive, 25 0"
    ];

    bindm = [
      # Move/resize windows with mainMod + LMB/RMB and dragging
      "$mainMod, mouse:272, movewindow"
      "$mainMod, mouse:273, resizewindow"
    ];

    bindl = [
      # lid close/open events
      ", switch:on:Lid Switch, exec, hyprctl keyword monitor \"eDP-1, disable\""
      ", switch:off:Lid Switch, exec, hyprctl keyword monitor \"eDP-1,highres,auto,2\""
    ];

    bindle = [
      # Media keys
      # ", XF86AudioRaiseVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%+"
      # ", XF86AudioLowerVolume, exec, wpctl set-volume -l 1.4 @DEFAULT_AUDIO_SINK@ 5%-"
      # ", XF86AudioMute, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"
      # ", XF86MonBrightnessUp, exec, brightnessctl s 5%+"
      # ", XF86MonBrightnessDown, exec, brightnessctl s 5%-"
      ", XF86AudioPlay, exec, playerctl play-pause"
      ", XF86AudioNext, exec, playerctl next"
      ", XF86AudioPrev, exec, playerctl previous"
      ", XF86AudioRaiseVolume, exec, swayosd-client --output-volume raise"
      ", XF86AudioLowerVolume, exec, swayosd-client --output-volume lower"
      ", XF86AudioMute, exec, swayosd-client --output-volume mute-toggle"
      ", XF86MonBrightnessUp, exec, swayosd-client --brightness raise"
      ", XF86MonBrightnessDown, exec, swayosd-client --brightness lower"
    ];

  };
}
