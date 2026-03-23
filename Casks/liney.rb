cask "liney" do
  version "1.0.15"
  sha256 "78b5969a70301f7a157a4f17c9623f1e5b5c37d39682ed7803cc541e9527e362"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
