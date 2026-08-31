cask "liney" do
  version "1.0.81"
  sha256 "2ece3c029e057a50ed1688f5d151340bd19e368d4233ada7cc0b09a3f432ec9e"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
