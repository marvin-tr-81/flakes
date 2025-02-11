{
  plugins.lsp = {

    enable = true;

    lazyLoad.settings.event = [
      "BufReadPre"
      "BufNewFile"
    ];

    servers = {

      nixd.enable = true; # Nix
      pyright.enable = true; # Python
      texlab.enable = true; # LaTeX
    };

  };

  extraConfigVim = ''
    sign define DiagnosticSignError text=
    sign define DiagnosticSignWarn text=
    sign define DiagnosticSignHint text=󰠠
    sign define DiagnosticSignInfo text=
  '';

}
