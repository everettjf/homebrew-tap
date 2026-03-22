cask "liney" do
  version "1.0.9"
  sha256 "37b19b01f5e3b6a276283ca9980e0dce7a64917170d55f74f791603540ba6a32"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
