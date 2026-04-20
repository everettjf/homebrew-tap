cask "liney" do
  version "1.0.57"
  sha256 "308549d8d38787eeffcb993bb61b5cc9b45f7139b2ec02d529c6e7eebe590e3b"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
