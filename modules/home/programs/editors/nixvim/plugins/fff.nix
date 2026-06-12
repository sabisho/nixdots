{
  programs.nixvim = {
    plugins = {
      fff = {
        enable = true;
        settings = {
          prompt = "   ";
          layout = {
            prompt_position = "top";
          };
        };
      };
    };
  };
}
