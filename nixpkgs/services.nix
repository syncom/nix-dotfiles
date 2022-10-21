{ config, pkgs, ...}:

{
  services.gpg-agent = {
    enable = true;
    enableSshSupport = true;
    defaultCacheTtl = 1800;
    pinentryFlavor = "tty";
  };
}
