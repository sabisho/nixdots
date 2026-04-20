{
  programs.fastfetch.settings = {
    "$schema" = "https://github.com/fastfetch-cli/fastfetch/raw/dev/doc/json_schema.json";

    logo = {
      source = "~/nixdots/modules/home/programs/noctalia/config/Rusty-Friend.png";
      type = "kitty";
      height = 14;
      padding = {
        top = 2;
      };
    };

    display = {
      separator = " ";
    };

    modules = [
      "break"
      "break"
      "break"
      {
        type = "title";
        keyWidth = 10;
      }
      {
        type = "custom";
        format = "~~~~~~~~~~~~~~~~~~~~~~~~~~";
      }
      {
        type = "os";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "command";
        key = "󰔠 ";
        keyColor = "magenta";
        text = "birth_install=$(stat -c %W /); current=$(date +%s); time_progression=$((current - birth_install)); days_difference=$((time_progression / 86400)); echo $days_difference days";
      }
      {
        type = "kernel";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "packages";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "shell";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "terminal";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "wm";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "uptime";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "media";
        key = " ";
        keyColor = "magenta";
      }
      {
        type = "player";
        key = "󰑈 ";
        keyColor = "magenta";
      }
      {
        type = "colors";
        paddingLeft = 2;
        symbol = "circle";
      }
      "break"
    ];
  };
}
