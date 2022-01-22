# Nix configuration files

- nixos: System configuration to go to /etc/
  - Update system configuration with

    ```bash
    # sudo nixos-rebuild build # for test
    sudo nixos-rebuild swtich --upgrade
    sudo nix-rebuild boot
    ```

- nixpkgs: Home Manager configuration to go to ~/.config/
  - Update user configuration with

    ```bash
    home-manager build
    home-manager switch
    ```