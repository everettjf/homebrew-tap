cask "liney" do
  version "1.0.2"
  sha256 "4f71fc4f48450a9741e3ec7b07bd1c2b409027ae937e1e90dcdc9ebd4fb3c64e"

  url "https://github.com/everettjf/liney/releases/download/v#{version}/Liney-#{version}.dmg"
  name "Liney"
  desc "Native macOS terminal workspace manager for git repositories, worktrees, and split panes."
  homepage "https://github.com/everettjf/liney"

  app "Liney.app"
end
