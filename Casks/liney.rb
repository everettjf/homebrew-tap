cask "liney" do
  version "1.0.55"
  sha256 "d9a33f50f119f610d591aad38055a16646cebf72889c24f8cf123e8f0f8e093a"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
