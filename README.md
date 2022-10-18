# Nix configuration files

- Set up channels

  ```bash
  # For NixOS. Run `sudo nix-channel --list` to check
  sudo nix-channel --add https://nixos.org/channels/nixos-22.05 nixos
  sudo nix-channel --update
  # For home-manager. Run `nix-channel --list` to check
  nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz home-manager
  nix-channel --update
  ```

- nixos: System configuration to go to /etc/
  - Update system configuration with

    ```bash
    # sudo nixos-rebuild build # for test
    sudo nixos-rebuild swtich --upgrade
    sudo nixos-rebuild boot
    # Optional
    sudo nix-collect-garbage -d
    ```

- nixpkgs: Home Manager configuration to go to ~/.config/
  - Update user configuration with

    ```bash
    home-manager build
    home-manager switch
    ```
