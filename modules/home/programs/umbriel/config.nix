{...}: {
  programs.umbriel.settings = {
    include.optional.files = [
      "noctalia.toml"
    ];

    general = {
      autostart = ["noctalia"];
      mod_key = "Super";
      show_cheatsheet = false;
      xwayland = true;
      attach_modal_dialogs = true;
    };

    output."eDP-1" = {
      mode = "1920x1080@60";
      scale = 1.0;
      transform = "normal";
      position = [0 0];
    };

    layout = {
      gap = 10;
      mode = "scrolling";
      extent_presets = [0.333 0.5 0.667];
      scrolling = {
        default_extent_fraction = 0.5;
        center_underfull_strip = true;
        center_focused = "never";
      };
    };

    appearance = {
      prefer_no_csd = true;
      border_width = 2;
      corner_radius = 20;
      blur = {
        enabled = true;
        radius = 5;
        passes = 3;
      };
      shadow = {
        enabled = true;
        softness = 50;
        offset_x = 0;
        offset_y = 8;
      };
    };

    input = {
      keyboard = {
        layout = "us";
        numlock_toggle = true;
      };
      mouse = {
        accel_profile = "flat";
      };
      touchpad = {
        tap = true;
        natural_scroll = true;
        accel_profile = "adaptive";
      };
      focus = {
        follows_mouse = true;
      };
      cursor = {
        theme = "Adwaita";
        size = 24;
        hide_when_typing = true;
        hide_timeout_ms = 1000;
      };
    };

    keybinds = {
      # Applications and session
      "Mod" = "spawn:noctalia msg panel-toggle launcher";
      "Mod+Return" = {
        action = "spawn:kitty";
        repeat = false;
      };
      "Mod+B" = "spawn:noctalia msg bar-toggle";
      "Mod+E" = "spawn:thunar";
      "Mod+C" = "spawn:noctalia msg panel-toggle clipboard";
      "Mod+Backspace" = "spawn:noctalia msg panel-toggle session";

      "Mod+Escape" = "session-quit";
      "Mod+Shift+Escape" = {
        action = "shortcuts-inhibit-toggle";
        allow_when_inhibited = true;
        repeat = false;
      };

      # Backlight and Audio
      "XF86MonBrightnessUp" = {
        action = "spawn:noctalia msg brightness-up";
        allow_when_locked = true;
      };
      "XF86MonBrightnessDown" = {
        action = "spawn:noctalia msg brightness-down";
        allow_when_locked = true;
      };
      "XF86AudioRaiseVolume" = {
        action = "spawn:noctalia msg volume-up";
        allow_when_locked = true;
      };
      "XF86AudioLowerVolume" = {
        action = "spawn:noctalia msg volume-down";
        allow_when_locked = true;
      };
      "XF86AudioMute" = {
        action = "spawn:noctalia msg volume-mute";
        allow_when_locked = true;
        repeat = false;
      };
      "XF86AudioPlay" = {
        action = "spawn:playerctl play-pause";
        allow_when_locked = true;
        repeat = false;
      };
      "XF86AudioPause" = {
        action = "spawn:playerctl pause";
        allow_when_locked = true;
        repeat = false;
      };
      "XF86AudioNext" = {
        action = "spawn:playerctl next";
        allow_when_locked = true;
      };
      "XF86AudioPrev" = {
        action = "spawn:playerctl previous";
        allow_when_locked = true;
      };

      # Windows and Columns
      "Mod+Q" = {
        action = "window-close";
        repeat = false;
      };
      "Mod+W" = "window-cycle-primary-extent";
      "Mod+T" = {
        action = "window-toggle-floating";
        repeat = false;
      };
      "Mod+M" = {
        action = "window-toggle-maximize";
        repeat = false;
      };
      "Mod+Ctrl+M" = {
        action = "window-toggle-maximize-to-edges";
        repeat = false;
      };
      "Mod+F" = {
        action = "window-toggle-fullscreen";
        repeat = false;
      };

      # Focus
      "Mod+H" = "window-focus-left";
      "Mod+L" = "window-focus-right";
      "Mod+J" = "window-focus-or-workspace-down";
      "Mod+K" = "window-focus-or-workspace-up";
      "Mod+Left" = "window-focus-left";
      "Mod+Right" = "window-focus-right";
      "Mod+Down" = "window-focus-or-workspace-down";
      "Mod+Up" = "window-focus-or-workspace-up";

      # Move column
      "Mod+Shift+H" = "column-move-left";
      "Mod+Shift+L" = "column-move-right";
      "Mod+Shift+Left" = "column-move-left";
      "Mod+Shift+Right" = "column-move-right";

      # Resize column and window
      "Mod+Ctrl+H" = "window-modify-primary-extent:-0.1";
      "Mod+Ctrl+L" = "window-modify-primary-extent:+0.1";
      "Mod+Ctrl+K" = "window-modify-secondary-extent:+0.1";
      "Mod+Ctrl+J" = "window-modify-secondary-extent:-0.1";

      # Consume and expel
      "Mod+BracketLeft" = "window-consume-or-expel-left";
      "Mod+BracketRight" = "window-consume-or-expel-right";
      "Mod+Comma" = "window-consume-left";
      "Mod+Period" = "window-consume-right";
      "Mod+Ctrl+Comma" = "window-consume-from-left";
      "Mod+Ctrl+Period" = "window-consume-from-right";

      # Workspace movement
      "Mod+Shift+J" = "column-move-to-workspace-next";
      "Mod+Shift+K" = "column-move-to-workspace-previous";
      "Mod+Shift+Down" = "column-move-to-workspace-next";
      "Mod+Shift+Up" = "column-move-to-workspace-previous";

      # Overview
      "Mod+O" = {
        action = "overview-toggle";
        repeat = false;
      };

      # Workspaces 1-9
      "Mod+1" = "workspace-switch:1";
      "Mod+2" = "workspace-switch:2";
      "Mod+3" = "workspace-switch:3";
      "Mod+4" = "workspace-switch:4";
      "Mod+5" = "workspace-switch:5";
      "Mod+6" = "workspace-switch:6";
      "Mod+7" = "workspace-switch:7";
      "Mod+8" = "workspace-switch:8";
      "Mod+9" = "workspace-switch:9";

      "Mod+Shift+1" = "window-move-to-workspace:1";
      "Mod+Shift+2" = "window-move-to-workspace:2";
      "Mod+Shift+3" = "window-move-to-workspace:3";
      "Mod+Shift+4" = "window-move-to-workspace:4";
      "Mod+Shift+5" = "window-move-to-workspace:5";
      "Mod+Shift+6" = "window-move-to-workspace:6";
      "Mod+Shift+7" = "window-move-to-workspace:7";
      "Mod+Shift+8" = "window-move-to-workspace:8";
      "Mod+Shift+9" = "window-move-to-workspace:9";

      # Scratchpad
      "Mod+Space" = "scratchpad-toggle";
      "Mod+Shift+Space" = {
        action = "window-move-to-scratchpad";
        repeat = false;
      };
      "Mod+Ctrl+Space" = {
        action = "window-restore-from-scratchpad";
        repeat = false;
      };
      "Mod+Tab" = "scratchpad-focus-next";

      # Screenshots
      "Print" = "spawn:noctalia msg screenshot-annotate";
      "Ctrl+Print" = "spawn:noctalia msg screenshot-window";
      "Shift+Print" = "spawn:noctalia msg screenshot-screen";
    };

    window_rule = [
      {
        blur = true;
      }
      {
        match.is_alone = true;
        default_maximize = true;
      }
      {
        match.app_id = "^zen-beta$";
        default_maximize = true;
      }
      {
        match.app_id = [
          "^dev\\.noctalia\\.Noctalia$"
          "^dev\\.noctalia\\.Noctalia\\.Settings$"
        ];
        default_floating = true;
        default_floating_size_px = {
          width = 1080;
          height = 920;
        };
      }
      {
        match.app_id = "^dev\\.noctalia\\.UmbrielSharePicker$";
        default_floating = true;
        default_floating_size_px = {
          width = 800;
          height = 600;
        };
      }
      {
        match.app_id = [
          "^org\\.gnome\\.Calculator$"
          "^swayimg$"
          "^steam$"
          "^org\\.pulseaudio\\.pavucontrol$"
          "^waypaper$"
          "^thunar$"
          "^org\\.gnome\\.FileRoller$"
        ];
        default_floating = true;
        shadow = true;
      }
      {
        match.title = "^File Operation Progress$";
        default_floating = true;
        shadow = true;
      }
    ];

    layer_rule = [
      {
        match.namespace = "^noctalia-(bar-[^\"]+|notification|dock|panel|attached-panel|osd|desktop-widget-[^\"]*)$";
        blur = true;
        blur_ignore_alpha = 0.5;
        blur_popups = true;
      }
      {
        match.namespace = "^noctalia-(notification|dock|panel|attached-panel|osd|window-switcher)$";
        blur_optimized = false;
      }
    ];
  };
}
