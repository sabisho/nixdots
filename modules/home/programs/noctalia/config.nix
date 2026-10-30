{config, ...}: {
  programs.noctalia.settings = {
    backdrop.enabled = true;

    bar = {
      order = ["Main"];
      Main = {
        background_opacity = 0.5;
        capsule_thickness = 0.9;
        center = ["workspaces"];
        end = [
          "tray"
          "widget"
          "bar"
          "notifications"
          "caffeine"
          "clipboard"
          "network"
          "volume"
          "brightness"
          "battery"
        ];
        margin_ends = 10;
        radius = 20;
        start = [
          "clock"
          "date"
          "wallpaper"
          "wallhaven"
          "media"
        ];
        widget_spacing = 20;
      };
    };

    calendar = {};

    control_center = {
      show_shortcut_labels = false;
      calendar.show_events_card = false;
    };

    dock.background_opacity = 0.5;

    idle = {
      behavior_order = ["lock" "screen-off" "lock-and-suspend"];
      behavior = {
        lock = {
          action = "lock";
          enabled = true;
          timeout = 600.0;
        };
        lock-and-suspend = {
          action = "lock_and_suspend";
          enabled = true;
          timeout = 900.0;
        };
        screen-off = {
          action = "screen_off";
          enabled = true;
          timeout = 660.0;
        };
      };
    };

    location = {
      address = "New Delhi, Delhi, India";
      auto_locate = false;
    };

    lockscreen_widgets = {
      enabled = true;
      schema_version = 2;
      widget_order = [
        "lockscreen-login-box@eDP-1"
        "lockscreen-widget-0000000000000001"
      ];
      grid = {
        cell_size = 16;
        major_interval = 4;
        visible = true;
      };
      widget = {
        "lockscreen-login-box@eDP-1" = {
          box_height = 196.0;
          box_width = 810.0;
          cx = 960.0;
          cy = 898.0;
          output = "eDP-1";
          placement_height = 1080.0;
          placement_width = 1920.0;
          rotation = 0.0;
          type = "login_box";
          settings = {
            background_color = "surface_container";
            background_opacity = 0.88;
            background_radius = 12.0;
            center_password_text = false;
            input_opacity = 1.0;
            input_radius = 6.0;
            layout = "regular";
            show_caps_lock = true;
            show_keyboard_layout = true;
            show_login_button = true;
            show_media = true;
            show_session_buttons = true;
            show_unlock_hint = true;
            show_weather = true;
          };
        };
        lockscreen-widget-0000000000000001 = {
          box_height = 528.0;
          box_width = 1904.0;
          cx = 960.0;
          cy = 268.0;
          output = "eDP-1";
          placement_height = 1080.0;
          placement_width = 1920.0;
          rotation = 0.0;
          type = "clock";
          settings = {
            background = false;
          };
        };
      };
    };

    nightlight = {
      enabled = true;
      force = true;
      temperature_day = 5100;
      temperature_night = 5000;
    };

    notification.background_opacity = 0.5;

    osd = {
      background_opacity = 0.5;
      position = "bottom_center";
      kinds.nightlight = false;
    };

    plugin_settings."noctalia/wallhaven" = {
      api_key = "RcDtTQdNQa6cSSbB0BkHzv93RcQyYy7E";
      download_dir = "${config.home.homeDirectory}/Pictures/Wallpapers";
    };

    plugins.enabled = [
      "noctalia/wallhaven"
      "thepunkoff/pomodoro"
      "yuuto/calculator"
    ];

    shell = {
      app_icon_color = "on_surface";
      avatar_path = "${config.home.homeDirectory}/nixdots/modules/home/programs/noctalia/configs/Rusty-Friend.png";
      corner_radius_scale = 2.0;
      font_family = "Adwaita Sans";
      niri_overview_type_to_launch_enabled = true;
      password_style = "random";
      polkit_agent = true;
      screen_time_enabled = true;
      greeter_sync.auto_sync = true;
      launcher = {
        categories = false;
        fetch_exchange_rates = false;
      };
      panel.transparency_mode = "glass";
      shadow.alpha = 0.5;
    };

    theme = {
      source = "wallpaper";
      templates = {
        builtin_ids = [
          "btop"
          "cava"
          "gtk3"
          "gtk4"
          "kitty"
          "niri"
          "qt"
          "starship"
          "umbriel"
        ];
        community_ids = [
          "brave"
          "brave-origin"
          "zen-browser"
          "zed"
          "heroiclauncher"
          "fastfetch"
          "bat"
          "lazygit"
          "yazi"
        ];
        user.yomu = {
          input_path = "$XDG_CONFIG_HOME/noctalia/templates/yomu-theme.toml.template";
          output_path = "$XDG_CONFIG_HOME/yomu/themes.toml";
        };
      };
    };

    wallpaper = {
      directory = "${config.home.homeDirectory}/nixdots/Wallpapers";
      transition_on_startup = true;
      default.path = "${config.home.homeDirectory}/nixdots/Wallpapers/Green-Sky.jpg";
      last.path = "${config.home.homeDirectory}/nixdots/Wallpapers/Green-Sky.jpg";
      monitors.eDP-1.path = "${config.home.homeDirectory}/nixdots/Wallpapers/Green-Sky.jpg";
    };

    widget = {
      bar.type = "yuuto/calculator:bar";
      battery.display_mode = "graphic";
      media = {
        hide_album_art = true;
        hide_when_no_media = true;
        show_progress = true;
      };
      tray.drawer = true;
      wallhaven.type = "noctalia/wallhaven:wallhaven";
      widget = {
        type = "thepunkoff/pomodoro:widget";
        widget-glyph-break = "zzz";
        widget-glyph-main = "hourglass-empty";
        widget-glyph-work = "focus-2";
      };
      workspaces = {
        active_pill_size = 2.5;
        anchor = true;
        show_labels = false;
      };
    };
  };
}
