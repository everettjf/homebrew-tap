cask "liney" do
  version "1.0.31"
  sha256 "869b6961aec6ec9a2c84daa27b0d0fbc930c86970a9f63f3bb327c8603ffa1ca"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
