cask "liney" do
  version "1.0.88"
  sha256 "aa784390c82f2f489d011f21a7a1c06365f2f0baf957b6a26df06b172b4a27ac"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
