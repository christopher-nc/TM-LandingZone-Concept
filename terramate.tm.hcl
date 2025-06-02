terramate {
  config {
    git {
      default_branch = "main"
      default_remote = "origin"
    }
    disable_safeguards = ["git-untracked", "git-uncommitted"]
  }
}