cask "liney" do
  version "1.0.23"
  sha256 "b0ba7853b45e2683dfe130443c0e7e6b7bfd5301b719fc4cb92a32fc2a5ef9be"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
