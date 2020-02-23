{ pkgs ? import <nixpkgs> {  }}:

let
  overlay = import ./overlay.nix;
in (pkgs.extend overlay).git-worktree-init
