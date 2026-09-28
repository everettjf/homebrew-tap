cask "liney" do
  version "1.0.87"
  sha256 "dec92bcea7d649d0445163b0d6feb0723dab1eac67c1d9a68dfdc262ac31306d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
