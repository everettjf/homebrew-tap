cask "liney" do
  version "1.0.82"
  sha256 "38c56de1317640662b576d5ddbd470044f23c23d725c2b0cf743fccaa32ad646"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
