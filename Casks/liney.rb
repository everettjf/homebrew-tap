cask "liney" do
  version "1.0.63"
  sha256 "8eaba47b614eedc50366d80e284e1d90dc339257fc370ff70936428e1a30c2ca"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
