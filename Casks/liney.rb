cask "liney" do
  version "1.0.85"
  sha256 "7c3de98971f7dce6fb4a183605f9a0035e67d67811c4aa6b859ec8f95a517d3d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
