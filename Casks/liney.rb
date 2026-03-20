cask "liney" do
  version "1.0.0"
  sha256 "9360f8dd6314f5e48e06ac199a54045d257364afc25b58ce3687b53a7a19cabe"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
