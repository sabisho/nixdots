{inputs, ...}: {
  # Just import the module - that's it!
  imports = [
    inputs.eilmeldung.homeManager.default
  ];

  programs.eilmeldung = {
    enable = true;

    # settings = {
    #   refresh_fps = 60;
    #   article_scope = "unread";

    #   feed_list = [
    #     "query: \"Today Unread\" today unread"
    #     "query: \"Today Marked\" today marked"
    #     "feeds"
    #     "* categories"
    #     "tags"
    #   ];

    #   theme = {
    #     color_palette = {
    #       background = "#282828";
    #       foreground = "#ebdbb2";
    #       black = "#282828";
    #       red = "#cc241d";
    #       green = "#98971a";
    #       yellow = "#d79921";
    #       blue = "#458588";
    #       magenta = "#b16286";
    #       cyan = "#689d6a";
    #       white = "#a89984";
    #       bright_black = "#928374";
    #       bright_red = "#fb4934";
    #       bright_green = "#b8bb26";
    #       bright_yellow = "#fabd2f";
    #       bright_blue = "#83a598";
    #       bright_magenta = "#d3869b";
    #       bright_cyan = "#8ec07c";
    #       bright_white = "#ebdbb2";
    #     };
    #   };

    #   input_config.mappings = {
    #     "q" = "quit";
    #     "j" = "down";
    #     "k" = "up";
    #     "h" = "left";
    #     "l" = "right";
    #     "g g" = "gotofirst";
    #     "G" = "gotolast";
    #     "tab" = "nextpanel";
    #     "o" = ["open" "read" "nextunread"];
    #     "r" = "read";
    #     "m" = "mark";
    #     "s" = "sync";
    #     "/" = "commandline search ";
    #     ":" = "commandline";
    #     "?" = "help";
    #     "space" = "toggle";
    #   };
    # };
  };
}
