{
  programs.nixvim = {
    plugins = {
      fff = {
        enable = true;
        settings = {
          prompt = "--> ";
          title = "Find Files";
          layout = {
            prompt_position = "top";
          };
        };
      };
    };
  };
}
