cask "liney" do
  version "1.0.83"
  sha256 "b06935eadcdee0f8bfd9855392061c1e4b3a1e36b5cae9f1b30d3db241f14381"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
