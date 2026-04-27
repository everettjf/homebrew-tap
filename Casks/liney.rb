cask "liney" do
  version "1.0.62"
  sha256 "3708411e5b60e5dae8c57886a5ad2b7898e056adf1424d82c6fac06acd814e05"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
