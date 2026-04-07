cask "liney" do
  version "1.0.35"
  sha256 "835d891f974545bdaaf7ea30699132494f3be240148cec0295801e7fd7fac57a"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
