cask "liney" do
  version "1.0.33"
  sha256 "c8a55bd5b7a7ca26f4a02d2231b97511c95b96a1ad4c5628a7897ca9e9ce1380"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
