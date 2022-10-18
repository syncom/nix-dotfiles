{ config, pkgs, ...}:

{
  # chromium & extensions
  programs.chromium = {
    enable = true;
    extensions = [
      { id = "cjpalhdlnbpafiamejdnhcphjbkeiagm"; } # ublock origin
    ];
  };

  # VS Code
  programs.vscode = {
    enable = true;
    extensions = [
    ];
  };

  # git
  programs.git = {
    enable = true;
    userName = "Ning Shang";
    userEmail = "syncom.dev@gmail.com";
  };

  # gpg
  programs.gpg = {
    enable = true;
    package = pkgs.gnupg;
    mutableKeys = true;
    mutableTrust = true;
  };

  # go
  programs.go = {
    enable = true;
    package = pkgs.go;
  };
}