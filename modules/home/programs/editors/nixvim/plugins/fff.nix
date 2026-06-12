{
  programs.nixvim = {
    plugins = {
      fff = {
        enable = true;
        settings = {
          prompt = "--> ";
        };
      };
    };
  };
}
