# This Dockerfile is for testing home-manager package building only
# The following information is from https://hub.docker.com/r/nixos/nix/tags
FROM nixos/nix:2.9.0@sha256:13b257cd42db29dc851f9818ea1bc2f9c7128c51fdf000971fa6058c66fbe4b6 as image_builder

WORKDIR "/home/nshang"

RUN nix-channel --add https://github.com/nix-community/home-manager/archive/release-22.05.tar.gz home-manager && \
  nix-channel --update && \
  nix-env -i home-manager

COPY . "/home/nshang/nix-dotfiles"

RUN mkdir -p ~/.config && \
  rm -rf ~/.config/nixpkgs && \
  cp -r /home/nshang/nix-dotfiles/nixpkgs ~/.config/nixpkgs 

RUN home-manager build

#RUN home-manager switch
