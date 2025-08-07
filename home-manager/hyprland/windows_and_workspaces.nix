{
  wayland.windowManager.hyprland.settings = {

    ##############################
    ### WINDOWS AND WORKSPACES ###
    ##############################

    # See https://wiki.hyprland.org/Configuring/Window-Rules/ for more
    # See https://wiki.hyprland.org/Configuring/Workspace-Rules/ for workspace rules

    windowrule = [

      # Example windowrule
      # "float,class:^(kitty)$,title:^(kitty)$"

      # Ignore maximize requests from apps. You'll probably like this.
      "suppressevent maximize, class:.*"

      # Fix some dragging issues with XWayland
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"

    ];

    windowrulev2 = [

      # float Youtube Picture in picture
      "float, title:^(Picture-in-Picture)$"

      # pin Youtube Picture in picture
      "pin, title:^(Picture-in-Picture)$"

      # hyprbars nobar
      "plugin:hyprbars:nobar, class:negative:org.dosbox-staging.dosbox-staging"

    ];

  };
}
