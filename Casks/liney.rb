cask "liney" do
  version "1.0.51"
  sha256 "f01a193e1ea596754dae808339a24c351f14996b199ae7d6d0d739f993df51fb"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
