{
  programs.ssh = {
    enableDefaultConfig = false;
    settings = {
      "*".addKeysToAgent = "yes";
      "github.com".identityFile = "~/.ssh/id_ed25519";
    };
  };
}
