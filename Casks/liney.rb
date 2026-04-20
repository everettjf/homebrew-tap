cask "liney" do
  version "1.0.58"
  sha256 "64d1d11725e2b20fdc74cce8b4a76c9b50a04877901dcf41f6df0d6e32d7ac88"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
