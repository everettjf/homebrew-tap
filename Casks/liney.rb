cask "liney" do
  version "1.0.19"
  sha256 "ddfae0ddc2ea35fb348506c891ef476da210030141552f7903aa0158db02acc8"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
