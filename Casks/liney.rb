cask "liney" do
  version "1.0.17"
  sha256 "9655891132c813584e37579cb6e9c2d06c8b45afc67af192802ac73a5c2fae50"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
