{
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland.enable = true;
    settings = {
      # ==================== VARIABLES ====================
      "$mod" = "SUPER";
      "$term" = "kitty";
      "$browser" = "zen-beta";
      "$scripts" = "~/.config/hypr";

      # ==================== ENVIRONMENT ====================
      # env = [
      #   "HYPRCURSOR_THEME,HyprBibataModernClassicSVG"
      #   "HYPRCURSOR_SIZE,20"
      #   "XCURSOR_THEME,Bibata-Modern-Classic"
      #   "XCURSOR_SIZE,20"
      # ];

      # ==================== AUTOSTART ====================
      exec-once = [
        "/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1"
        "cliphist wipe"
        "noctalia-shell"
      ];

      # ==================== MONITOR ====================
      monitor = ",preferred,auto,1";

      # ==================== INPUT ====================
      input = {
        numlock_by_default = true;
        accel_profile = "adaptive";
        sensitivity = 0.0;
        touchpad = {
          natural_scroll = true;
        };
        kb_options = "caps:swapescape";
      };

      # ==================== GESTURES (Updated for 0.51+) ====================
      gestures = {
        # New gesture system (replaces workspace_swipe)
        gesture = [
          "3, horizontal, workspace"
        ];
      };

      # ==================== GENERAL ====================
      general = {
        gaps_in = 5;
        gaps_out = 10;
      };

      # ==================== DECORATION ====================
      decoration = {
        rounding = 20;
        rounding_power = 2;
        shadow = {
          enabled = true;
          range = 4;
          render_power = 3;
          color = "rgba(1a1a1aee)";
        };

        blur = {
          enabled = true;
          size = 3;
          passes = 2;
          vibrancy = 0.1696;
        };
      };

      # ==================== ANIMATIONS ====================
      animations = {
        enabled = true;

        # Smooth, fluid bezier curves - no bounce
        bezier = [
          "easeOutQuint, 0.22, 1, 0.36, 1"
          "easeInOutCubic, 0.65, 0, 0.35, 1"
          "linear, 0, 0, 1, 1"
          "easeOutExpo, 0.16, 1, 0.3, 1"
        ];

        animation = [
          # Slow, smooth window animations
          "windows, 1, 8, easeOutExpo, slide"
          "windowsIn, 1, 8, easeOutExpo, slide"
          "windowsOut, 1, 8, easeInOutCubic, slide"
          "windowsMove, 1, 8, easeOutQuint, slide"

          # Subtle border animations
          "border, 1, 10, easeOutQuint"
          "borderangle, 1, 100, linear, loop"

          # Smooth fading
          "fade, 1, 8, easeOutQuint"
          "fadeIn, 1, 8, easeOutExpo"
          "fadeOut, 1, 8, easeInOutCubic"

          # Gentle workspace transitions
          "workspaces, 1, 9, easeOutExpo, slide"
        ];
      };

      # ==================== DWINDLE ====================
      dwindle = {
        pseudotile = true;
        preserve_split = true;
      };

      # ==================== MISC ====================
      misc = {
        mouse_move_enables_dpms = true;
        enable_swallow = true;
        swallow_regex = "^($term)$";
        focus_on_activate = true;
        disable_hyprland_logo = true;
        force_default_wallpaper = 0;
      };

      # ==================== KEYBINDS ====================
      bind = [
        # Application shortcuts
        "$mod, Return, exec, $term"
        "ALT, I, exec, $browser"
        "ALT, C, exec, $term -e cava"
        "ALT, M, exec, $term -e rmpc"
        "ALT, N, exec, $term -e newsraft"
        "ALT, E, exec, thunar"
        "ALT, T, exec, transmission-remote-gtk"

        # Window manager essentials
        # "$mod, E, exec, ~/.config/fuzzel/"
        "$mod, Backspace, exec, noctalia-shell ipc call sessionMenu toggle"
        "$mod, SPACE, exec, noctalia-shell ipc call launcher toggle"
        "$mod, C, exec, noctalia-shell ipc call launcher clipboard"
        "$mod, Print, exec, $scripts/screenshot.sh s"
        ", Print, exec, $scripts/screenshot.sh p"

        # Media controls
        ", XF86AudioMute, exec, noctalia-shell ipc call volume muteOutput"
        ", XF86AudioPlay, exec, playerctl play-pause"
        ", XF86AudioPause, exec, playerctl play-pause"
        ", XF86AudioNext, exec, playerctl next"
        ", XF86AudioPrev, exec, playerctl previous"

        # Window management
        "$mod, T, togglefloating"
        "$mod, P, pseudo"
        "$mod, J, togglesplit"
        "$mod, Q, killactive"
        "$mod, F, fullscreen"

        # Focus movement
        "$mod, left, movefocus, l"
        "$mod, right, movefocus, r"
        "$mod, up, movefocus, u"
        "$mod, down, movefocus, d"

        # Window movement
        "$mod SHIFT, left, movewindow, l"
        "$mod SHIFT, right, movewindow, r"
        "$mod SHIFT, up, movewindow, u"
        "$mod SHIFT, down, movewindow, d"

        # Workspace switching
        "$mod, 1, workspace, 1"
        "$mod, 2, workspace, 2"
        "$mod, 3, workspace, 3"
        "$mod, 4, workspace, 4"
        "$mod, 5, workspace, 5"
        "$mod, 6, workspace, 6"
        "$mod, 7, workspace, 7"
        "$mod, 8, workspace, 8"
        "$mod, 9, workspace, 9"
        "$mod, 0, workspace, 10"

        # Move to workspace
        "$mod SHIFT, 1, movetoworkspace, 1"
        "$mod SHIFT, 2, movetoworkspace, 2"
        "$mod SHIFT, 3, movetoworkspace, 3"
        "$mod SHIFT, 4, movetoworkspace, 4"
        "$mod SHIFT, 5, movetoworkspace, 5"
        "$mod SHIFT, 6, movetoworkspace, 6"
        "$mod SHIFT, 7, movetoworkspace, 7"
        "$mod SHIFT, 8, movetoworkspace, 8"
        "$mod SHIFT, 9, movetoworkspace, 9"
        "$mod SHIFT, 0, movetoworkspace, 10"

        # Mouse workspace switching
        "$mod, mouse_down, workspace, e+1"
        "$mod, mouse_up, workspace, e-1"

        # Resize submap
        "$mod, R, submap, resize"
      ];

      # Repeat binds for volume and brightness
      binde = [
        ", XF86AudioRaiseVolume, exec, noctalia-shell ipc call volume increase"
        ", XF86AudioLowerVolume, exec, noctalia-shell ipc call volume decrease"
      ];

      # Brightness binds
      bindle = [
        ", XF86MonBrightnessUp, exec, noctalia-shell ipc call brightness increase"
        ", XF86MonBrightnessDown, exec, noctalia-shell ipc call brightness decrease"
      ];

      # Mouse binds
      bindm = [
        "$mod, mouse:272, movewindow"
        "$mod, mouse:273, resizewindow"
      ];

      # ==================== LAYER RULES ====================
      layerrule = [
        {
          name = "noctalia";
          "match:namespace" = "noctalia-background-.*$";
          ignore_alpha = 0.5;
          blur = true;
          blur_popups = true;
        }
      ];

      # ==================== WINDOW RULES ====================
      windowrule = [
        # Workspace rules
        "match:class (kitty)$, workspace 1"
        "match:class (Alacritty)$, workspace 1"
        "match:class (zen-beta)$, workspace 2"
        "match:class (nautilus)$, workspace 3"
        "match:class (Thunar)$, workspace 3"
        "match:title ^(yazi)$, workspace 3"
        "match:class (mpv)$, workspace 4"
        "match:class (ncmpcpp)$, workspace 4"
        "match:class (cava)$, workspace 4"
        "match:class (org.telegram.desktop)$, workspace 5"
        "match:class (sioyek)$, workspace 5"
        "match:class (steam)$, workspace 7"
        "match:class ^(tremc)$, workspace 8"
        "match:class (org.qbittorrent.qBittorrent)$, workspace 8"

        # Floating rules
        "match:class (org.pulseaudio.pavucontrol)$, float on"
        "match:class (polkit-gnome-authentication-agent-1)$, float on"
        "match:title (Picture-in-Picture)$, float on"
        "match:title (Select Document)$, float on"
        "match:class (ncmpcpp)$, float on"
        "match:class (cava)$, float on"
        "match:title (File Operation Progress)$, float on"
        "match:title (Preferences)$, float on"
        "match:title (Confirm to replace files)$, float on"
        "match:class (waypaper)$, float on"

        # Size rules
        "match:class (ncmpcpp)$, size 600 600"
        "match:class (cava)$, size 600 600"

        # Position rules
        "match:class (ncmpcpp)$, move 15 81"
        "match:class (cava)$, move 751 81"
      ];
    };

    # ==================== EXTRA CONFIG ====================
    extraConfig = ''
      # Resize submap bindings
      submap = resize
      binde = , right, resizeactive, 10 0
      binde = , left, resizeactive, -10 0
      binde = , up, resizeactive, 0 -10
      binde = , down, resizeactive, 0 10
      bind = , escape, submap, reset
      submap = reset
    '';
  };
  xdg.configFile.hypr = {
    source = ./scripts;
    recursive = true;
  };
}
