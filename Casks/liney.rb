cask "liney" do
  version "1.0.79"
  sha256 "6069a9518889e25b2ea1db60fe41c9a6e00191122567a3b548496d1555a54adc"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
