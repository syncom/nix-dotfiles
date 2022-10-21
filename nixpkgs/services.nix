{ config, pkgs, ...}:

{
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    defaultCacheTtl = 1800;
    # tty does not work, so comment out
    #pinentryFlavor = "tty";
  };
}
