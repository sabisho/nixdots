{
  xdg.configFile."mitos/config.toml".text = ''
    theme = "gruvbox-transparent"

    [editor]
    line-number = "relative"
    border-style = "rounded"
    cursorline = true
    icons = true

    [editor.mouse]
    enable = true

    [editor.rainbow-brackets]
    enable = true

    [editor.bufferline]
    show = "multiple"

    [editor.cursor]
    block-rendering = "native"

    [editor.cursor.shape]
    insert = "bar"
    normal = "block"
    select = "underline"

    [editor.indent-guides]
    render = true

    [editor.soft-wrap]
    enable = true

    [editor.lsp.inlay-hints]
    enable = true

    [editor.file-picker]
    hidden = true

    [editor.diagnostics.inline]
    cursor-line = "warning"

    [editor.diagnostics.end-of-line]
    severity = "hint"

    [editor.statusline]
    left = ["mode", "file-name", "file-modification-indicator", "spinner", "file-type"]
    right = ["diagnostics", "selections", "position", "file-encoding", "file-line-ending"]
    separator = "│"

    [editor.statusline.mode]
    color = true
    normal = "NORMAL"
    insert = "INSERT"
    select = "SELECT"

    [keys.insert]
    "C-[" = "normal_mode"

    [keys.normal]
    ret = "goto_word"

    [keys.normal.space]
    n = ":open ~/nixdots"

    [keys.normal."["]
    s = "@mim<A-s><A-,>(<A-,>:sort -i<ret>,;mm"
    n = "@<A-s>I<C-r>#.<space><esc>"

    [keys.normal."]"]
    s = "@mim<A-s><A-,>(<A-,>:sort -i -r<ret>,;mm"
  '';

  xdg.configFile."mitos/themes/gruvbox-transparent.toml".text = ''
    inherits = "gruvbox_dark_hard"
    "ui.background" = {}
    "ui.popup" = {}
    "ui.completion" = {}
    "ui.menu" = {}
    "ui.help" = {}
  '';

  xdg.configFile."mitos/themes/noctalia-transparent.toml".text = ''
    inherits = "noctalia"
    "ui.background" = {}
    "ui.popup" = {}
    "ui.completion" = {}
    "ui.menu" = {}
    "ui.help" = {}
  '';
}
