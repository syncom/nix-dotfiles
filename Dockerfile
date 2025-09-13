# This Dockerfile is for testing home-manager package building only
# The following information is from https://hub.docker.com/r/nixos/nix/tags
FROM nixos/nix:2.29.2@sha256:14d8425d83c027ad878430b57993cd65a65f3c64eae66bbd82805d62f878f39c AS image_builder

WORKDIR "/home/nshang"

# HM 25.05
RUN nix-channel --add https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz home-manager && \
  nix-channel --update && \
  nix-env --install home-manager

COPY . "/home/nshang/nix-dotfiles"

RUN mkdir -p ~/.config && \
  rm -rf ~/.config/nixpkgs && \
  cp -r /home/nshang/nix-dotfiles/nixpkgs ~/.config/nixpkgs && \
  cp -r /home/nshang/nix-dotfiles/home-manager ~/.config/home-manager

RUN home-manager build

#RUN home-manager switch
