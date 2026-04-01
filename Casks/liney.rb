cask "liney" do
  version "1.0.27"
  sha256 "3b5d19d60f01beb530f61002c280e7047e3d62ae3f81257515c51087774b2d57"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
