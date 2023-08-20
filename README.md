# Nix configuration files

[![home-manager build packages](https://github.com/syncom/nix-dotfiles/actions/workflows/build-hm-pkgs.yml/badge.svg)](https://github.com/syncom/nix-dotfiles/actions/workflows/build-hm-pkgs.yml)

- Set up channels

  ```bash
  # For NixOS. Run `sudo nix-channel --list` to check
  sudo nix-channel --add https://nixos.org/channels/nixos-23.05 nixos
  sudo nix-channel --update
  # For home-manager. Run `nix-channel --list` to check
  nix-channel --add https://github.com/nix-community/home-manager/archive/release-23.05.tar.gz home-manager
  nix-channel --update
  ```

- `nixos`: System configuration to go to `/etc/`
  - Update system configuration with

    ```bash
    # sudo nixos-rebuild build # for test
    sudo nixos-rebuild switch --upgrade
    sudo nixos-rebuild boot
    # Optional
    sudo nix-collect-garbage -d
    ```

- `nixpkgs` and `home-manager`: Nixpkgs and Home Manager configurations to go to
  `~/.config/`
  - Update user configuration with

    ```bash
    home-manager build
    home-manager switch
    ```
