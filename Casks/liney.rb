cask "liney" do
  version "1.0.86"
  sha256 "a053918916bf3999cf7bd22caa9f86324ac50cf4b6b2ab33e55d1071e87e848d"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
