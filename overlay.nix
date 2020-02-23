self: super: {
  git-worktree-init = self.callPackage ./derivation.nix { };
}
