cask "liney" do
  version "1.0.18"
  sha256 "266ecc47452a358f38a4cf0d01af023253bd32d34d9d06260a1c3c1f77199279"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
