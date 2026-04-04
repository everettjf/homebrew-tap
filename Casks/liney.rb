cask "liney" do
  version "1.0.32"
  sha256 "1c391d41cae667c96fbcacb7ce8905253bf9ba2dfa0f9c87ce69e90b88ffe5f6"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
