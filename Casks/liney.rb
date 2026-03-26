cask "liney" do
  version "1.0.21"
  sha256 "f15748b653b451bef8e5ce8b95f9464458ab74dfcd618c3282bdde43d34e40ab"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
