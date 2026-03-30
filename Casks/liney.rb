cask "liney" do
  version "1.0.26"
  sha256 "ccbdcd9df49bfb039117423eb126b6a8dc3ae9869726700a41479e45e6638b51"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
