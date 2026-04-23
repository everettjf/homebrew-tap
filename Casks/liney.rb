cask "liney" do
  version "1.0.59"
  sha256 "45f2d6df7e24cd6204d8778563c6d0e5930ceea1a77ecd4aac530235bdd8a180"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
