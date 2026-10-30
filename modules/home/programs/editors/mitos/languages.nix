{
  xdg.configFile."mitos/languages.toml".text = ''
    [[language]]
    name = "nix"
    auto-format = true
    formatter = { command = "alejandra", args = ["--quiet"] }

    [[language]]
    name = "typst"
    language-servers = ["tinymist"]
    auto-format = true

    [language-server.tinymist]
    command = "tinymist"
    config = { formatterMode = "typstyle" }
  '';
}
