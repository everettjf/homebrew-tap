cask "liney" do
  version "1.0.20"
  sha256 "8be437d86614ecac410ffdcca5e63b11833b5e6fba5e1a5700925f58c0a50b75"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
