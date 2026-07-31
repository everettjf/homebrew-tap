cask "liney" do
  version "1.0.78"
  sha256 "32d3b9f56b8b2cd435a55d3ccdaa33134594b798d4f6a8cda2e9665dedc1c408"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
