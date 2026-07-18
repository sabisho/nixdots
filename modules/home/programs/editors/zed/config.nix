{
  programs.zed-editor = {
    userSettings = {
      title_bar = {
        show_sign_in = false;
      };
      window_decorations = "server";
      disable_ai = true;
      helix_mode = true;
      telemetry = {
        diagnostics = false;
        metrics = false;
        anthropic_retention = false;
      };
      ui_font_size = 16;
      buffer_font_size = 15;
      theme = {
        mode = "system";
        light = "Gruvbox Light";
        dark = "Gruvbox Dark";
      };
    };
  };
}
