cask "liney" do
  version "1.0.0"
  sha256 "5ac386d03c5c62a010b6800a3936dacc9f4240c24ca41020b3c372e4aa8b7495"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
