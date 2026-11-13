{
  lib,
  stdenv,
  fetchurl,
  autoPatchelfHook,
  installShellFiles,
  makeWrapper,
}:

stdenv.mkDerivation rec {
  pname = "mitos";
  version = "0.2.1";

  src = fetchurl {
    url = "https://github.com/mitos-editor/mitos/releases/download/v${version}/mitos-v${version}-${stdenv.hostPlatform.system}.tar.xz";
    hash =
      if stdenv.hostPlatform.system == "x86_64-linux" then
        "sha256-CkzLsO2ixewMcCEJcNOh1flHFQEbCwP/+dkmlnWmc6g="
      else if stdenv.hostPlatform.system == "aarch64-linux" then
        "sha256-tcXqH7HyLEDHyNbq2mWWMMlVC6HZWLwBi6ykf3iHWjg="
      else
        throw "Unsupported system: ${stdenv.hostPlatform.system}";
  };

  nativeBuildInputs = [
    autoPatchelfHook
    installShellFiles
    makeWrapper
  ];

  buildInputs = [
    stdenv.cc.cc.lib
  ];

  installPhase = ''
    runHook preInstall

    mkdir -p $out/bin $out/lib/mitos
    cp ms $out/bin/ms
    cp -r runtime $out/lib/mitos/runtime
    ln -s $out/lib/mitos/runtime $out/bin/runtime

    # Symlink 'mitos' to 'ms' so users can run either command
    ln -s $out/bin/ms $out/bin/mitos

    wrapProgram $out/bin/ms \
      --set-default MITOS_RUNTIME "$out/lib/mitos/runtime"

    installShellCompletion --bash contrib/completion/ms.bash
    installShellCompletion --fish contrib/completion/ms.fish
    installShellCompletion --zsh contrib/completion/ms.zsh

    mkdir -p $out/share/applications
    cat <<EOF > $out/share/applications/Mitos.desktop
[Desktop Entry]
Name=Mitos
GenericName=Text Editor
Comment=A post-modern modal text editor
TryExec=$out/bin/ms
Exec=$out/bin/ms %F
Terminal=true
Type=Application
Categories=Utility;TextEditor;ConsoleOnly;
MimeType=text/english;text/plain;text/x-makefile;text/x-c++hdr;text/x-c++src;text/x-chdr;text/x-csrc;text/x-java;text/x-moc;text/x-pascal;text/x-tcl;text/x-tex;application/x-shellscript;text/x-c;text/x-c++;
EOF

    runHook postInstall
  '';

  meta = with lib; {
    description = "A post-modern modal text editor";
    homepage = "https://github.com/mitos-editor/mitos";
    license = licenses.mpl20;
    mainProgram = "ms";
    platforms = [ "x86_64-linux" "aarch64-linux" ];
  };
}
