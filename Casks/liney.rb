cask "liney" do
  version "1.0.65"
  sha256 "cb10002c703eda6cd1ff7193c7985ce35baa7d661b73294232b7e58a20acc014"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
