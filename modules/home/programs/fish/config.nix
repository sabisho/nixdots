{
  programs.fish = {
    # Disable the default greeting
    interactiveShellInit = ''
      set fish_greeting "NixOS, BTW!"
      fish_vi_key_bindings
    '';

    shellAliases = {
      ff = "fastfetch";
      ffn = "fastfetch -c none";
      h = "hx";
      la = "eza --icons=always -a";
      lla = "eza --icons=always -la";
      ls = "eza --icons=always";
      lt = "eza --icons=always -la --tree";
      mpc = "rmpc";
      rss = "newsraft";
      v = "nvim";
      vi = "nvim";
      vim = "nvim";
    };

    shellAbbrs = {
      dfp = "cd ~/nixdots && jj desc && jj bookmark set main && jj new && jj git push --branch main; or echo 'Push cancelled'";
      fu = "nix flake update";
      isodd = "caligula burn";
      lg = "lazygit";
      nd = "nix develop";
      nhb = "nh os boot --ask";
      nhc = "nh clean all --optimise --ask";
      nhs = "nh os switch --ask";
      of = "onefetch";
      tss = "freeze";
      typ = "ttyper";
    };

    functions = {
      core-conf = {
        description = "Open Neovim in NixOS' core configs.";
        body = ''
          cd ~/nixdots/modules/core; or return
          nvim .
        '';
      };

      pro-conf = {
        description = "Open Neovim in Home Manager' programs configs.";
        body = ''
          cd ~/nixdots/modules/home/programs; or return
          nvim .
        '';
      };

      # Yazi integration function
      y = ''
        set tmp (mktemp -t "yazi-cwd.XXXXXX")
        yazi $argv --cwd-file="$tmp"
        if set cwd (command cat -- "$tmp"); and [ -n "$cwd" ]; and [ "$cwd" != "$PWD" ]
            builtin cd -- "$cwd"
        end
        rm -f -- "$tmp"
      '';

      ytm = {
        description = "Youtube Music Downloader with embedded metadata";
        body = ''
          yt-dlp -x --embed-metadata $argv 2>| rg -i "error|warning|failed" | tee error.txt
        '';
      };

      ytv = {
        description = "Download YouTube video avoiding AV1 codec";
        body = ''
          yt-dlp -f "bestvideo[vcodec^=avc]+bestaudio/best" --embed-chapters $argv
        '';
      };
    };
  };

  # Set PATH - add ~/.local/bin
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
}
