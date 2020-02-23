# git-worktree-init

Submodule-like configuration of git worktrees.

## Usage

Executing the command `git-wokrtree-init add doc documentation` registers the
documentation branch of the given repository in the `doc` directory. The command
creates a file named `.gitworktrees`:

``` ini
[worktree "doc"]
     path = doc
     ref = documentation
```

If you execute `git-worktree-init` will checkout the `documentation` branch in the
`doc` directory in the repository.
