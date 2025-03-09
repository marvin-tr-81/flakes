{ pkgs, ... }:

{
  programs.tmux = {

    enable = true;

    terminal = "screen-256color";
    mouse = true;
    prefix = "C-Space";
    keyMode = "vi";
    baseIndex = 1;
    clock24 = true;
    escapeTime = 0;
    historyLimit = 5000;

    plugins = with pkgs.tmuxPlugins; [
      vim-tmux-navigator
      resurrect
      continuum
    ];

    extraConfig = ''

      # General
      set -g set-clipboard on
      set -g status-interval 3
      set -g detach-on-destroy on

      # Allow programs in the pane to bypass tmux (e.g. for image preview)
      set -g allow-passthrough on

      # Refresh tmux config with r
      unbind r
      bind r source-file ~/.config/tmux/tmux.conf

      # Split horizontally in CWD with \
      unbind %
      bind \\ split-window -h -c "#{pane_current_path}"

      # Split vertically in CMD with -
      unbind \"
      bind - split-window -v -c "#{pane_current_path}"

      # New window in same path
      bind c new-window -c "#{pane_current_path}"

      # Use vim keys to resize
      bind -r j resize-pane -D 5
      bind -r k resize-pane -U 5
      bind -r l resize-pane -R 5
      bind -r h resize-pane -L 5
      bind -r m resize-pane -Z # Use m key to maximize pane

      # Enable vi mode
      set-window-option -g mode-keys vi

      # Start selecting text with "v"
      bind-key -T copy-mode-vi 'v' send -X begin-selection

      # Copy text with "y"
      bind -T copy-mode-vi 'y' send-keys -X copy-pipe-and-cancel "pbcopy"

      # Don't exit copy mode when dragging with mouse
      unbind -T copy-mode-vi MouseDragEnd1Pane

      # Automatically renumber windows when one is closed
      set -g renumber-windows on

      # Resurrect and continuum plugin settings
      set -g @resurrect-capture-pane-contents 'on'
      set -g @continuum-restore 'on'

      # Statusbar settings
      set -g status-justify centre
      set -g status-right-length 200 # default: 10
      set -g status-left-length 200  # default: 10
      set -g window-status-current-format "#I:#W"
      set -g window-status-last-style "bg=default"

    '';
  };
}
