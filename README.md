# git-worktree-init

Submodule-like configuration of git worktrees.

## Usage

Given the following `.gitworktrees` file in a repository:

``` ini
[worktree "doc-branch"]
     path = doc
     ref = documentation
```

Executing `git-worktree-init` will checkout the `documentation` branch in the
`doc` directory in the repository
