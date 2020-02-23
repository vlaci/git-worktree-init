{ stdenvNoCC, lib, makeWrapper, git }:

stdenvNoCC.mkDerivation {
  name = "git-worktree-init";

  src = ./.;

  buildInputs = [ makeWrapper ];

  installPhase = ''
    install -D bin/git-worktree-init $out/bin/git-worktree-init

    wrapProgram $out/bin/git-worktree-init \
      --prefix PATH : "${lib.makeBinPath [ git ]}"
  '';
}
