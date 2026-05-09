cask "liney" do
  version "1.0.66"
  sha256 "ce79a8d8c9a97f277f9403f79e7d00f6be87479ffc76a9d1c51039a3d4c4e162"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
