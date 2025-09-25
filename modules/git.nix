{pkgs, ...}: {
  programs.git = {
    enable = true;
    config = {
      userName = "helixoid";
      userEmail = "ayushrajmth91@gmail.com";
      init.defaultBranch = "main";
    };
  };
}
