cask "liney" do
  version "1.0.29"
  sha256 "e9df03eb59c41b8c784a0a6302e42233d032ca6a9559f87987d79bca2497aa70"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
